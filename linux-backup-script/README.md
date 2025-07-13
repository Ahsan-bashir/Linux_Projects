# 💾 Linux Backup Automation Script

## 📌 Project Objective
This project provides a Bash script that automatically backs up a specified directory into a compressed `.tar.gz` archive. The backup is timestamped and saved in a structured `backups/` folder for easy retrieval.

## 🗂️ Project Structure


linux-backup-script/
├── backup.sh                         # Main backup script
└── backups/
└── backup\_YYYY-MM-DD\_HH-MM-SS.tar.gz   # Timestamped backup files

## 🛠️ Technologies Used
- Bash Scripting
- Linux Commands: `tar`, `date`, `mkdir`
- File system navigation and automation

## 🚀 How to Run
1. Open terminal in the project directory.
2. Make the script executable:

   chmod +x backup.sh


3. Run the script:


   ./backup.sh

4. The script will:

   * Archive the specified source directory (default: `~/Documents`)
   * Save the `.tar.gz` file in the `backups/` folder with a unique timestamp

## 📝 Configuration

* You can change the source directory in the script:


  SOURCE_DIR="$HOME/Documents"

* Destination backups are saved inside the `backups/` directory created by the script.

## ✅ Features

* Timestamped and compressed backups
* Portable `.tar.gz` format for easy sharing or storage
* Ready to be scheduled via cron for automated daily backups

## 📚 What I Learned

* Practical use of `tar` for file archiving and compression
* Automating backup routines with Bash
* Structuring scripts to handle real-world sysadmin tasks
