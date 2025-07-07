# countchar

A modular shell script to count characters in a word, with logging, usage help, and options for counting all characters or a specific character.

## Installation

To make `countchar` available system-wide, create a symlink:

```sh
sudo ln -s "$(pwd)/countchar" /usr/local/bin/countchar
```

## Usage

```sh
countchar -w <word> [-c <character>]
```

- `-w <word>`: Specify the word to analyze (**required**).
- `-c <character>`: (Optional) Specify a single character to count its occurrences in the word.

If `-c` is not provided, the script counts all characters in the word.

### Examples

Count all characters in "hello123":
```sh
countchar -w hello123
```

Count occurrences of "l" in "hello123":
```sh
countchar -w hello123 -c l
```

Show help:
```sh
countchar --help
```

## Features

- **Logging:** All actions and errors are logged to `countchar.log`.
- **Typing Effect:** Output is displayed with a typing animation for better readability.
- **Error Handling:** Handles missing arguments and invalid options gracefully.
- **Modular Design:** Functions are split across multiple files for maintainability.

## File Structure

- `countchar` — Main script entry point.
- `helper.sh` — Usage/help and argument validation.
- `functions.sh` — Functions for counting characters.
- `utils.sh` — Logging and typing effect utilities.

## Dependencies

- `pv` (for typing effect). Install with:
  - macOS: `brew install pv`
  - Linux: `sudo apt install pv -y`

## License

MIT License