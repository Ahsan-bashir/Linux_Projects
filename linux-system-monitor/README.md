# 🖥️ Linux System Monitoring Script

## 📌 Project Objective
This project provides a Bash script to monitor essential system metrics including CPU usage, memory utilization, disk space, uptime, and top memory-consuming processes. It logs the output into a date-stamped file for daily system health tracking.

## 🗂️ Project Structure

linux-system-monitor/
├── monitor.sh                    # Main monitoring script
└── logs/
└── system\_YYYY-MM-DD.log     # Daily generated log file

## 🛠️ Technologies Used
- Bash Scripting
- Linux Commands: `uptime`, `top`, `free`, `df`, `ps`, `mkdir`, `date`
- File I/O and logging

## 🚀 How to Run
1. Open terminal in the project directory.
2. Make the script executable:

   chmod +x monitor.sh


3. Run the script:


   ./monitor.sh

4. Log file will be created in the `logs/` folder with the current date (e.g., `system_2025-07-11.log`).

## 📝 What It Logs

* System uptime
* CPU load averages
* Free and used memory
* Disk space usage
* Top 5 memory-consuming processes

## ✅ Features

* Clean and structured system report
* Date-stamped log files for historical tracking
* Cron-ready design for daily automation

## 📚 What I Learned

* Gathering real-time system data using Linux CLI tools
* Formatting and saving logs for system administration
* Automating monitoring tasks using Bash
