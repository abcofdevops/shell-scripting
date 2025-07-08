# Error Handling and Exit Codes
This step shows how to handle errors and interruptions properly.

## Objective

- Use `trap` to catch interrupts.
- Use exit codes to indicate success/failure.
- Use `shell options` or `execution flags`: set

## Type of Exit codes
- `0`: Success
- `1`: General error
- `2`: Syntax error or missing arguments
- `3`: Invalid option
- `4`: File not found
- `5`: Permission denied
- `6`: Command not found
- `127`: Command not found (specific to shell scripts)
- `130`: Script interrupted by user (Ctrl+C)
- `255`: Exit code for general errors (can be customized)
- `126`: Command invoked cannot execute (permission issue)
- `137`: Process killed by signal (e.g., `kill -9`)
- `139`: Segmentation fault (accessing invalid memory)
- `255`: Exit status out of range (Reserved for very specific cases.)


## Concepts

- `trap` for catching signals (e.g., Ctrl+C)
- Custom `exit` codes
- `set [OPTION]` 
    ```bash
    #shell options or execution flags
    set -x  # [DEBUG mode] Print each command before executing (debugging)
    
    set -e  # Exit immediately on command error [but it will pass "test | echo" it checks last command ]
    set -o pipefail  # Return non-zero if any command in a pipeline fails [it will fail "test | echo" no command "test" found]
    
    #set -xeo pipefail # Can be written together 
    ```