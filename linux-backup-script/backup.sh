#!/bin/bash

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successful: $ARCHIVE_NAME"
else
    echo "Backup failed!"
fi
