# Shell Scripting: Count Characters Step-by-Step

This folder demonstrates how to build a shell script that counts characters in a word, progressing from basic command-line usage to a modular CLI tool. Each subfolder introduces a new scripting concept, with code and documentation.

---

## Folder Structure & Stages

Each numbered folder covers a specific shell scripting topic:

| Folder | Topic/Stage | Description |
|--------|-------------|-------------|
| `0.01-command-line` | Command Line | Run commands directly in the terminal. |
| `0.02-script` | Script File | Write and execute a basic shell script file. |
| `0.03-variables` | Variables | Use variables to store data in scripts. |
| `0.04-arguments` | Arguments | Accept command-line arguments in scripts. |
| `0.05-user-inputs` | User Input | Prompt user for input during script execution. |
| `0.05.1-user-inputs-fallback` | Input Fallback | Use fallback logic for missing inputs. |
| `0.06-validation` | Validation | Validate user input and arguments. |
| `0.07-loops` | Loops | Use loops to process data. |
| `0.08-functions` | Functions | Organize code into reusable functions. |
| `0.09-modular` | Modularization | Split code into multiple files for maintainability. |
| `0.10-logging` | Logging | Log script actions and results. |
| `0.10.1-logging-to-file` | Logging to File | Write logs to a file. |
| `0.11-getops` | getopts | Parse options and flags using `getopts`. |
| `0.11.1-getops-help-and-usage` | Help/Usage | Add help and usage instructions. |
| `0.12-error-handling` | Error Handling | Handle errors and use exit codes. |
| `0.13-tests` | Testing | Write simple test scripts for validation. |
| `0.14-cli-tool` | CLI Tool | Make the script a reusable command-line tool. |
| `1.0-countchar` | Interactive Modular Tool | Modular, interactive script with logging and typing effect. |
| `1.1-countchar-getops` | CLI Tool with getopts | Modular CLI tool with argument parsing and logging. |

---

## How to Use

1. **Explore Each Folder:**  
   Each subfolder contains a `README.md` and one or more scripts. Start from `0.01-command-line` and progress to advanced folders.

2. **Run Scripts:**  
   - Make scripts executable:  
     ```sh
     chmod +x script.sh
     ```
   - Run scripts as described in each folder's `README.md`.

3. **Try the CLI Tool:**  
   - In `1.0-countchar` and `1.1-countchar-getops`, you’ll find advanced, modular scripts.
   - To use as a global CLI tool, symlink or move the `countchar` script to `/usr/local/bin/`.

---

## Key Concepts Demonstrated

- Running shell commands and scripts
- Using variables and arguments
- Reading user input
- Input validation and error handling
- Loops and functions
- Modular scripting (splitting code into files)
- Logging and output redirection
- Parsing options with `getopts`
- Writing help/usage instructions
- Basic testing of scripts
- Creating a global CLI tool

---

## Example: Counting Characters

**Basic Command:**
```sh
echo "mississipi" | grep -o "s" | wc -l
```

**Advanced CLI Tool:**
```sh
countchar -w hello123 -c l
```

---

## Dependencies

Some scripts (e.g., for typing effect) require [`pv`](https://linux.die.net/man/1/pv):

- macOS:  
  `brew install pv`
- Linux:  
  `sudo apt install pv -y`

---

## License

MIT License

---

**Explore each folder for detailed explanations