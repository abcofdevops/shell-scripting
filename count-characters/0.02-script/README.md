# Script
We can add multiple lines in a file and save this file as <filename>.sh eg. script.sh
Then we can run this script using the command `sh script.sh`.

Objective

- Create and run a basic shell script file.

## Usage
```bash
sh script.sh
```

## Constituents of a script
- **Shebang**: The first line of the script, starting with `#!`, indicates the interpreter to be used to execute the script. For example, `#!/bin/bash` specifies Bash shell.

- **Comments**: Lines starting with `#` are comments and are ignored by the interpreter. They are used to explain the code or provide context.

- **Commands**: The actual commands to be executed, which can include shell commands, variable assignments, loops, conditionals, and functions.

## Execution Permissions
The script file must have execute permissions to be run directly. 
1.  This can be set using the command `chmod +x script.sh`.

2.  Now script can be executed as `./script.sh` 