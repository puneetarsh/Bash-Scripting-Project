# Bash Scripting & Web Server Automation 

This repository contains my **Bash scripting practice** along with a **real-world web server automation project**.
The main highlight of this project is automating the deployment of an HTML website on a Linux server using Bash.

### Bash Scripting Practice

1_firstscript.sh – Basic bash script  
2_websetup.sh – Basic web server setup  
3_vars_websetup.sh – Web setup using variables  
4_args.sh – Script arguments example  
5_args_websetup.sh – Web setup using arguments  
6_command_subs.sh – Command substitution  
7_userinput.sh – User input handling  
8_if1.sh – If condition example  
9_if1.sh – If-else example  
10_ifelif.sh – If-elif-else example  
11_monit.sh – Monitoring script  
12_monit.sh – Monitoring example  
13_for.sh – For loop example  
14_for.sh – For loop example  
15_while.sh – While loop example  
16_while.sh – While loop example  
dismantle.sh – Cleanup / teardown script  
  


##  Web Server Automation (Main Project)
🔹 What this script does
The multi-OS web setup script automates the following:

     Detects Linux OS (CentOS / Ubuntu)
     Installs Apache / HTTPD
     Starts and enables the web service
     Downloads an HTML website template
     Deploys the website to `/var/www/html`
     Restarts the web service
     Cleans up temporary files
##  Website Template

The HTML website used in this project is **NOT created by me**.
 
 Source: https://www.tooplate.com  
 Template Name: 2098 Health  
 Purpose: Learning & demonstration only

All design and UI credits belong to the original creator.
##  How to Run (Linux Only)

>  These scripts are intended to run on **Linux systems only**
> (CentOS / Ubuntu).  
> Tested using **Vagrant Linux VMs**.

     chmod +x *.sh
     ./multios_websetup.sh

-> LEARNING OUTCOME

This project helped me understand how Bash scripting is used in real-world DevOps automation, especially for:

    Server provisioning
    Application deployment
    OS-aware scripting

-> TOOLS AND TECHNOLOGIES

1: Bash Shell
2: Linux (CentOS / Ubuntu)
3: Apache / HTTPD
4: Vagrant (for VM testing)
5: Git & GitHub

-> CONCEPTS COVERED

- Bash scripting fundamentals
-  Variables & arguments
- Conditional statements
- Loops (for / while)
- User input handling
- Linux service management
- Web server automation
- Real-world DevOps scripting

