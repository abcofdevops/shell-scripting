# Adding Fallback to User Input

This step adds flexibility by using `read` if command-line arguments are not provided.

## Objective

- Use default values and prompt the user interactively if arguments are not supplied.


## Usage

```bash
sh script.sh mississipi s
```

Or, without arguments:

```bash
sh script.sh
Enter word: mississipi
Enter character: s
```

## Concept

- `${1:-default}`: Default value fallback.
- Mixing arguments and `read` inputs.