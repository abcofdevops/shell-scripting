# countchar

A modular shell script to count all characters in a word or count occurrences of a specific character, with interactive prompts, logging, and a typing effect.

## Features

- **Interactive Mode:** Prompts user for input if arguments are missing.
- **Count All Characters:** Counts total characters in a word.
- **Count Specific Character:** Counts occurrences of a specific character in a word.
- **Logging:** All actions and errors are logged to `script.log`.
- **Typing Effect:** Output is displayed with a typing animation (requires `pv`).
- **Modular Design:** Functions are organized in separate files for clarity and maintainability.
- **Usage Instructions:** Built-in help and usage display.

## File Structure

- `countchar` — Main script entry point.
- `helper.sh` — Usage/help, input validation, and user interaction.
- `functions.sh` — Functions for counting characters.
- `utils.sh` — Logging and typing effect utilities.

## Prerequisites

- **pv** (for typing effect)
  - macOS: `brew install pv`
  - Linux: `sudo apt install pv -y`

## Usage

Make the script executable:
```sh
chmod +x countchar
```

Run the script:
```sh
./countchar [word] [character]
```
- `word` (optional): The word to analyze. If not provided, you will be prompted.
- `character` (optional): The character to count. If not provided, counts all characters.

### Examples

Count all characters in "hello123":
```sh
./countchar hello123
```

Count occurrences of "l" in "hello123":
```sh
./countchar hello123 l
```

If you run without arguments, the script will prompt you interactively.

## Logging

All actions and errors are logged to `countchar.log` in the current directory.

## License

MIT License