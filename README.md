# HexTranspiler
Pseudocode Transpiler for Hexcasting
<br/>
Current minecraft version supported: 1.20.1

## HOW TO USE:
### get the install script:
`wget https://raw.githubusercontent.com/navarchus/HexTranspiler/refs/heads/master/install.lua`
<br/>
### run the install script
ex: `install.lua`
<br/>
#### Subcommands
There is one subcommand: `cgs` or `cleargreatspell`. Using this command clears saved greatspells from local storage.
<br/>
ex:
<br/>
`hexpiler cgs "Create Lava"` will clear any definition for "Create Lava"
<br/>
`hexpiler cgs all` will clear ALL great spell definitions
<br/>
#### Arguments
There are three arguments:
- `--install/-i`: Required, string, file path to the [.hexpattern](https://marketplace.visualstudio.com/items?itemName=object-Object.hex-casting) file to transpile.
- `--output/-o`: Optional, string, file path to write raw anglesigs to. Will not write anything if not set.
- `--export/-e`: Optional, boolean, whether to write the result to a [focal port](https://github.com/SamsTheNerd/ducky-periphs/wiki/Focal-Port). Defaults to `true`

<br/>

## Example Usage
The command

<br/>

`hexpiler -i counter.hexpattern -o a.out -e true`

<br/>

would attempt to read the file `counter.hexpattern`, write raw anglesigs to the file `a.out`, and attempt to write the result to an attached focal port.

## Current list of supported addons:
- complexhex
- hexal
- hexcassettes
- hexcellular
- hexdebug
- hexical
- hextweaks
- moreiotas
- oneironaut

## TODO:
- Optimized numerical reflection (https://s5bug.github.io/squiggler/)??
- More detailed error messages
- More robust handling of #define and #include macros
- Refactoring for better maintainence
- Consider swapping from lua lookup tables to CSV for all patterns
- Better flow for great spell importing
- Possible issue with #define macros without angles
