#!/bin/bash

DATE=$(date +%F)
LOG_DIR="logs"
LOG_FILE="$LOG_DIR/system_$DATE.log"

mkdir -p "$LOG_DIR"

{
    echo "System Monitoring Report - $DATE"
    echo "---------------------------------"
    echo "Uptime:"
    uptime
    echo -e "\nCPU Load:"
    top -bn1 | grep "load average"
    echo -e "\nMemory Usage:"
    free -h
    echo -e "\nDisk Usage:"
    df -h
    echo -e "\nTop 5 Processes:"
    ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6
} >> "$LOG_FILE"

echo "System monitoring log saved to $LOG_FILE"
