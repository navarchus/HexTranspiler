--[[ /gitget
GitHub downloading utility for CC.
Developed by apemanzilla.
 
This requires ElvishJerricco's JSON parsing API.
Direct link: http://pastebin.com/raw.php?i=4nRg9CHU
]]--

local json_inline = [[
------------------------------------------------------------------ utils
local controls = {["\n"]="\\n", ["\r"]="\\r", ["\t"]="\\t", ["\b"]="\\b", ["\f"]="\\f", ["\""]="\\\"", ["\\"]="\\\\"}

local function isArray(t)
	local max = 0
	for k,v in pairs(t) do
		if type(k) ~= "number" then
			return false
		elseif k > max then
			max = k
		end
	end
	return max == #t
end

local whites = {['\n']=true; ['\r']=true; ['\t']=true; [' ']=true; [',']=true; [':']=true}
function removeWhite(str)
	while whites[str:sub(1, 1)] do
		str = str:sub(2)
	end
	return str
end

------------------------------------------------------------------ encoding

local function encodeCommon(val, pretty, tabLevel, tTracking)
	local str = ""

	-- Tabbing util
	local function tab(s)
		str = str .. ("\t"):rep(tabLevel) .. s
	end

	local function arrEncoding(val, bracket, closeBracket, iterator, loopFunc)
		str = str .. bracket
		if pretty then
			str = str .. "\n"
			tabLevel = tabLevel + 1
		end
		for k,v in iterator(val) do
			tab("")
			loopFunc(k,v)
			str = str .. ","
			if pretty then str = str .. "\n" end
		end
		if pretty then
			tabLevel = tabLevel - 1
		end
		if str:sub(-2) == ",\n" then
			str = str:sub(1, -3) .. "\n"
		elseif str:sub(-1) == "," then
			str = str:sub(1, -2)
		end
		tab(closeBracket)
	end

	-- Table encoding
	if type(val) == "table" then
		assert(not tTracking[val], "Cannot encode a table holding itself recursively")
		tTracking[val] = true
		if isArray(val) then
			arrEncoding(val, "[", "]", ipairs, function(k,v)
				str = str .. encodeCommon(v, pretty, tabLevel, tTracking)
			end)
		else
			arrEncoding(val, "{", "}", pairs, function(k,v)
				assert(type(k) == "string", "JSON object keys must be strings", 2)
				str = str .. encodeCommon(k, pretty, tabLevel, tTracking)
				str = str .. (pretty and ": " or ":") .. encodeCommon(v, pretty, tabLevel, tTracking)
			end)
		end
	-- String encoding
	elseif type(val) == "string" then
		str = '"' .. val:gsub("[%c\"\\]", controls) .. '"'
	-- Number encoding
	elseif type(val) == "number" or type(val) == "boolean" then
		str = tostring(val)
	else
		error("JSON only supports arrays, objects, numbers, booleans, and strings", 2)
	end
	return str
end

function encode(val)
	return encodeCommon(val, false, 0, {})
end

function encodePretty(val)
	return encodeCommon(val, true, 0, {})
end

------------------------------------------------------------------ decoding

local decodeControls = {}
for k,v in pairs(controls) do
	decodeControls[v] = k
end

function parseBoolean(str)
	if str:sub(1, 4) == "true" then
		return true, removeWhite(str:sub(5))
	else
		return false, removeWhite(str:sub(6))
	end
end

function parseNull(str)
	return nil, removeWhite(str:sub(5))
end

local numChars = {['e']=true; ['E']=true; ['+']=true; ['-']=true; ['.']=true}
function parseNumber(str)
	local i = 1
	while numChars[str:sub(i, i)] or tonumber(str:sub(i, i)) do
		i = i + 1
	end
	local val = tonumber(str:sub(1, i - 1))
	str = removeWhite(str:sub(i))
	return val, str
end

function parseString(str)
	str = str:sub(2)
	local s = ""
	while str:sub(1,1) ~= "\"" do
		local next = str:sub(1,1)
		str = str:sub(2)
		assert(next ~= "\n", "Unclosed string")

		if next == "\\" then
			local escape = str:sub(1,1)
			str = str:sub(2)

			next = assert(decodeControls[next..escape], "Invalid escape character")
		end

		s = s .. next
	end
	return s, removeWhite(str:sub(2))
end

function parseArray(str)
	str = removeWhite(str:sub(2))

	local val = {}
	local i = 1
	while str:sub(1, 1) ~= "]" do
		local v = nil
		v, str = parseValue(str)
		val[i] = v
		i = i + 1
		str = removeWhite(str)
	end
	str = removeWhite(str:sub(2))
	return val, str
end

function parseObject(str)
	str = removeWhite(str:sub(2))

	local val = {}
	while str:sub(1, 1) ~= "}" do
		local k, v = nil, nil
		k, v, str = parseMember(str)
		val[k] = v
		str = removeWhite(str)
	end
	str = removeWhite(str:sub(2))
	return val, str
end

function parseMember(str)
	local k = nil
	k, str = parseValue(str)
	local val = nil
	val, str = parseValue(str)
	return k, val, str
end

function parseValue(str)
	local fchar = str:sub(1, 1)
	if fchar == "{" then
		return parseObject(str)
	elseif fchar == "[" then
		return parseArray(str)
	elseif tonumber(fchar) ~= nil or numChars[fchar] then
		return parseNumber(str)
	elseif str:sub(1, 4) == "true" or str:sub(1, 5) == "false" then
		return parseBoolean(str)
	elseif fchar == "\"" then
		return parseString(str)
	elseif str:sub(1, 4) == "null" then
		return parseNull(str)
	end
	return nil
end

function decode(str)
	str = removeWhite(str)
	t = parseValue(str)
	return t
end

function decodeFromFile(path)
	local file = assert(fs.open(path, "r"))
	local decoded = decode(file.readAll())
	file.close()
	return decoded
end
]]

-- clear out hexpiler dir if exists
fs.delete("/hexpiler")

-- Edit these variables to use preset mode.
-- Whether to download the files asynchronously (huge speed benefits, will also retry failed files)
-- If false will download the files one by one and use the old output (List each file name as it's downloaded) instead of the progress bar
local async = true

-- Whether to write to the terminal as files are downloaded
-- Note that unless checked for this will not affect pre-set start/done code below
local silent = false

local preset = {
	-- The GitHub account name
	user = "navarchus",
	-- The GitHub repository name
	repo = "HexTranspiler",
	
	-- The branch or commit tree to download (defaults to 'master')
	branch = nil,
	
	-- The local folder to save all the files to (defaults to '/')
	path = "/hexpiler",
	
	-- Function to run before starting the download
	start = function()
		if not silent then print("Downloading files from GitHub...") end
	end,
	
	-- Function to run when the download completes
	done = function()
		if not silent then print("Done") end
	end
}

-- Leave the rest of the program alone.
-- local args = {...}
--don't accept cmdline args
local args = {}

args[1] = preset.user or args[1]
args[2] = preset.repo or args[2]
args[3] = preset.branch or args[3] or "master"
args[4] = preset.path or args[4] or ""
 
if #args < 2 then
		print("Usage:\n"..((shell and shell.getRunningProgram()) or "gitget").." <user> <repo> [branch/tree] [path]") error()
end
 
local function save(data,file)
	local file = shell.resolve(file:gsub("%%20"," "))
	if not (fs.exists(string.sub(file,1,#file - #fs.getName(file))) and fs.isDir(string.sub(file,1,#file - #fs.getName(file)))) then
		if fs.exists(string.sub(file,1,#file - #fs.getName(file))) then fs.delete(string.sub(file,1,#file - #fs.getName(file))) end
		fs.makeDir(string.sub(file,1,#file - #fs.getName(file)))
	end
	local f = fs.open(file,"w")
	f.write(data)
	f.close()
end
 
local function download(url, file)
	save(http.get(url).readAll(),file)
end

if not json then
-- 	download("http://pastebin.com/raw.php?i=4nRg9CHU","json")
-- 	os.loadAPI("json")
	local file = fs.open("json", "w")
	file.write(json_inline)
	file.close()
	os.loadAPI("json")
end



preset.start()
local data = json.decode(http.get("https://api.github.com/repos/"..args[1].."/"..args[2].."/git/trees/"..args[3].."?recursive=1").readAll())
if data.message and data.message:find("API rate limit exceeded") then error("Out of API calls, try again later") end
if data.message and data.message == "Not found" then error("Invalid repository",2) else
	for k,v in pairs(data.tree) do
		-- Make directories
		if v.type == "tree" then
			fs.makeDir(fs.combine(args[4],v.path))
			if not hide_progress then
			end
		end
	end
	local drawProgress
	if async and not silent then
		local _, y = term.getCursorPos()
		local wide, _ = term.getSize()
		term.setCursorPos(1, y)
		term.write("[")
		term.setCursorPos(wide - 6, y)
		term.write("]")
		drawProgress = function(done, max)
			local value = done / max
			term.setCursorPos(2,y)
			term.write(("="):rep(math.floor(value * (wide - 8))))
			local percent = math.floor(value * 100) .. "%"
			term.setCursorPos(wide - percent:len(),y)
			term.write(percent)
		end
	end
	local filecount = 0
	local downloaded = 0
	local paths = {}
	local failed = {}
	for k,v in pairs(data.tree) do
		-- Send all HTTP requests (async)
		if v.type == "blob" then
			v.path = v.path:gsub("%s","%%20")
			local url = "https://raw.github.com/"..args[1].."/"..args[2].."/"..args[3].."/"..v.path,fs.combine(args[4],v.path)
			if async then
				http.request(url)
				paths[url] = fs.combine(args[4],v.path)
				filecount = filecount + 1
			else
				download(url, fs.combine(args[4], v.path))
				if not silent then print(fs.combine(args[4], v.path)) end
			end
		end
	end
	while downloaded < filecount do
		local e, a, b = os.pullEvent()
		if e == "http_success" then
			save(b.readAll(),paths[a])
			downloaded = downloaded + 1
			if not silent then drawProgress(downloaded,filecount) end
		elseif e == "http_failure" then
			-- Retry in 3 seconds
			failed[os.startTimer(3)] = a
		elseif e == "timer" and failed[a] then
			http.request(failed[a])
		end
	end
end
preset.done()

--cleanup
for _, name in pairs(fs.list("/hexpiler/src")) do
    fs.move("/hexpiler/src/"..name, "/hexpiler/"..name)
end


--create stub executable in main folder
local stub = fs.open("/hexpiler.lua", "w")
stub.write('shell.execute("/hexpiler/hexpiler.lua", ...)')
stub.close()

--cleanup
fs.delete("/hexpiler/src")
fs.delete("/hexpiler/install.lua")
fs.delete("/hexpiler/scraper")
fs.delete("json")
fs.delete(shell.getRunningProgram())
