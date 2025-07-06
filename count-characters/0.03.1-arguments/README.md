# Command-Line Arguments

This script demonstrates how to pass input values to a shell script using **positional arguments** (`$1`, `$2`, etc.).

## Objective

- Accept input values from the command line when running a script.
- Use `$1` and `$2` to access these values.
- Replace manual input with arguments.

## Script Overview

The script takes:
- `$1`: A word (e.g., `mississipi`)
- `$2`: A character to count (e.g., `s`)

It then counts how many times the character appears in the word.

## Usage
```bash
sh script.sh mississipi s
```

## Concept
**To makes the script reusable.** 

There is no hard-coded values so script can be run for any word and to find any character without actually editing the script.
