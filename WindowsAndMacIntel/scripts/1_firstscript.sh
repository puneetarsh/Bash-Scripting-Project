#!/bin/bash

### This script prints system info ###

echo "Welcome to bash script."
echo

#checking systemt uptime
echo "#####################################"
echo "The uptime of the system is: "
uptime
echo

# Memory Utilization
echo "#####################################"
echo "Memory Utilization"
free -m
echo

# Disk Utilization
echo "#####################################"
echo "Disk Utilization"
df -h
echo
#List of open files
echo "#####################################"
echo "List of open files"
lsof | head -10
echo
#list of system ser
echo "#####################################"
echo "List of system services"
systemctl list-units --type=service --state=running | head -10
echo
# Network Information
echo "#####################################"
echo "Network Information"
ifconfig
echo
#list of logged in users
echo "#####################################"
echo "List of logged in users"
who
echo
list of environment variables
echo "#####################################"
echo "List of environment variables"
printenv
echo
#list of scheduled cron jobs
echo "#####################################"
echo "List of scheduled cron jobs"
crontab -l
echo
#list of running processes
echo "#####################################"
echo "List of running processes"
ps aux | head -10
echo
echo "End of Script"


