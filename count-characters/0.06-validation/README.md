# Input Validation

It adds basic checks to ensure the user provides valid input.


## Objective

- Validate arguments: non-empty and character length.
- Add a usage message for the user.

## Usage
```bash
sh script.sh mississipi

#Output
Usage: script.sh <word> <single-character>
```


## concept

- `if [ condition ]` 
- `-z` (empty string check)
- `${#var}` (string length)
- `exit 1` for error exit codes