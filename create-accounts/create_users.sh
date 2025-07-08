#!/bin/bash

INPUT="users.csv"

# Check if the file exists
if [[ ! -f "$INPUT" ]]; then
  echo "CSV file not found!"
  exit 1
fi

# Skip header and read each line
tail -n +2 "$INPUT" | while IFS=',' read -r username password; do
    username=$(echo "$username" | xargs)
    password=$(echo "$password" | xargs)

  # Check if username or password empty
  if [[ -z "$username" || -z "$password" ]]; then
  echo "Invalid entry: username or password is empty. Skipping..."
  continue
  fi

  # Check if user already exists
  if id "$username" &>/dev/null; then
    echo "User '$username' already exists. Skipping..."
    continue
  fi

  if useradd "$username"; then
    # Set the password
    echo "${username}:${password}" | chpasswd
    # Force password change on first login
    chage -d 0 "$username"
    echo "User '$username' created successfully."
  else
    echo "Failed to create user '$username'."
  fi

done