# Bash Scripting & Web Server Automation 

This repository contains my **Bash scripting practice** along with a **real-world web server automation project**.
The main highlight of this project is automating the deployment of an HTML website on a Linux server using Bash.

## Project Structure
scripts/
│
├── 1_firstscript.sh # Basic bash script
├── 2_websetup.sh # Basic web server setup
├── 3_vars_websetup.sh # Web setup using variables
├── 4_args.sh # Script arguments example
├── 5_args_websetup.sh # Web setup using arguments
├── 6_command_subs.sh # Command substitution
├── 7_userinput.sh # User input handling
├── 8_if1.sh # If condition example
├── 9_if1.sh # If-else example
├── 10_ifelif.sh # If-elif-else example
├── 11_monit.sh # Monitoring script
├── 12_monit.sh # Monitoring example
├── 13_for.sh # For loop
├── 14_for.sh # For loop example
├── 15_while.sh # While loop
├── 16_while.sh # While loop example
├── dismantle.sh # Cleanup / teardown script
├── testvars.sh # Variable testing
│
└── remote_websetup/
├── multios_websetup.sh # Multi-OS (CentOS/Ubuntu) web setup
├── webdeploy.sh # Website deployment script
├── remhosts # Remote hosts file
└── testfile.txt

##  Web Server Automation (Main Project)
🔹 What this script does
The **multi-OS web setup script** automates the following:
     Detects Linux OS (CentOS / Ubuntu)
     Installs Apache / HTTPD
     Starts and enables the web service
     Downloads an HTML website template
     Deploys the website to `/var/www/html`
     Restarts the web service
     Cleans up temporary files
## 🖥️ Website Template

The HTML website used in this project is **NOT created by me**.
 
 Source: https://www.tooplate.com  
 Template Name: 2098 Health  
 Purpose: Learning & demonstration only

All design and UI credits belong to the original creator.
## ⚙️ How to Run (Linux Only)

>  These scripts are intended to run on **Linux systems only**
> (CentOS / Ubuntu).  
> Tested using **Vagrant Linux VMs**.
chmod +x *.sh
./multios_websetup.sh

-> LEARNING OUTCOME

1: This project helped me understand how Bash scripting is used in real-world DevOps automation, especially for:
2: Server provisioning
3: Application deployment
4: OS-aware scripting

-> TOOLS AND TECHNOLOGIES

1: Bash Shell
2: Linux (CentOS / Ubuntu)
3: Apache / HTTPD
4: Vagrant (for VM testing)
5: Git & GitHub

-> CONCEPTS COVERED

1: Bash scripting fundamentals
2: Variables & arguments
3: Conditional statements
4: Loops (for / while)
5: User input handling
6: Linux service management
7: Web server automation
8: Real-world DevOps scripting

