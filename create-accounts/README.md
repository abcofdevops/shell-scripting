# create_user.sh - Bulk User Creation Script

This script automates the creation of multiple Linux system users from a CSV file.

## Overview

The script reads a CSV file (`users.csv`) containing usernames and passwords, and creates a new user account for each entry. It also sets the password and enforces a password change on the user's first login.

## Requirements
- Bash shell
- Root privileges
- Commands: `useradd`, `chpasswd`, `chage`, `id`, `tail`



## Input: `users.csv`

The CSV file should be in the following format:

```csv
username,password
jdoe,Password123
asmith,Secret456
```

- The first line is a header and will be skipped.

- Each subsequent line should contain a username and password, separated by a comma.

## Objective
1. Checks if `users.csv` exists.
2. Skips the header and reads each line.
3. For each user:
    - Checks if the user already exists.
    - Creates the user if not present.
    - Sets the user’s password.
    - Forces password change at first login.

## Usage
1. **Download the script:**
   ```bash
   wget https://raw.githubusercontent.com/abcofdevops/shell-scripting/main/create-accounts/create_users.sh

   # or

   curl -O https://raw.githubusercontent.com/abcofdevops/shell-scripting/main/create-accounts/create_users.sh

2. **Make the script executable:**
    ```bash
    chmod +x create_users.sh
    ```

3. **Run the script as root or with `sudo`**
    ```bash
    sudo ./create_users.sh
    ```

## Example Output
```bash
User 'jdoe' created successfully.
User 'asmith' created successfully.
User 'bwhite' already exists. Skipping...
```
