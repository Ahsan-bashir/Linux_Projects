# 👤 Linux User Management Automation

## 📌 Project Objective
This project automates the creation of multiple Linux users by reading data from a CSV file. Each user is assigned to a specified group, given a default password, and the action is logged with success or failure messages.

## 🧾 CSV Format
Create a `users.csv` file with the following format:
username,group
john,developers
alice,testers
bob,admins

## 🗂️ Project Structure


linux-user-management/
├── create\_users.sh           # Main script for automation
├── users.csv                 # Input file with user and group data
└── logs/
└── user\_creation.log     # Log file for creation results


## 🛠️ Technologies Used
- Bash Scripting
- Linux Commands: `useradd`, `groupadd`, `chpasswd`, `id`, `mkdir`, `echo`
- File handling and log management

## 🚀 How to Run
1. Open terminal in the project folder.
2. Make the script executable:
-   chmod +x create_users.sh


3. Run the script:

   ./create_users.sh

4. Review results in the `logs/user_creation.log` file.

## 📝 Notes

* Script checks if the user already exists using the `id` command.
* Default password for all users is `Default@123` (you can change it in the script).
* Groups must already exist or be created manually.

## ✅ Features

* Bulk user creation from CSV
* Group assignment
* Error handling and logging
* Easily extendable for real-world sysadmin scenarios

## 📚 What I Learned

* How to automate system administration tasks
* Use of shell scripting for user and group management
* Best practices in logging and file parsing
