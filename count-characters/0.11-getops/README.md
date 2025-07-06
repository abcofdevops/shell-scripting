# Parsing Options with `getopts`
This step introduces `getopts` to handle flags like `-w` and `-c`.

## Objective
- Use `getopts` for named arguments instead of positional ones.


## Usage
```bash
bash script.sh -w mississipi -c s
```

## Concepts
- `getopts`: Parses short options (like `-w`).
- `case`: Used for option handling.