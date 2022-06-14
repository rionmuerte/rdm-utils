# Scripts and stuff I use

## Constants:

### Declared:

- `RDM_UTILS_LOCATION` - location of top level directory
defaults to `/usr/share/rdm-utils`
- `RDM_TK_LOCATION` - location of `tools` directory
- `RDM_UTILS_CONFIG` - points to `$XDG_CONFIG_HOME/rdm-utils`

### Used:

- `XDG_CONFIG_HOME` - stores constants and other configs
- `XDG_DATA_HOME` - stores data files,

## Commands:

### `mago` family:

`mago` commands create directoris and change working directory to it.

 - `mago` - creates directory, could create nested
 - `magot` - creates dircetory with current timestamp as a name, one can add a suffix
 - `magom` - creates a directory and moves files from the following arguments
 - `magoc` - like above, but copies insted
 
## Tools:

- `command_loader` - sources indiscriminately all files from commands location
- `die` - killswitch function
- `usage` - one-line help function
- `mkscrip` - creates file with env shebang and selected interpreter
