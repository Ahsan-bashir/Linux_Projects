#!/bin/bash

INPUT_FILE="users.csv"
LOG_DIR="logs"
LOG_FILE="$LOG_DIR/user_creation.log"

mkdir -p "$LOG_DIR"
echo "User Creation Log - $(date)" > "$LOG_FILE"

while IFS=',' read -r username group; do
    if id "$username" &>/dev/null; then
        echo "[SKIP] User $username already exists." >> "$LOG_FILE"
    else
        sudo useradd -m -G "$group" "$username"
        echo "$username:Default@123" | sudo chpasswd
        echo "[OK] User $username created and added to group $group." >> "$LOG_FILE"
    fi
done < <(tail -n +2 "$INPUT_FILE")

echo "User creation complete. Check $LOG_FILE for details."
