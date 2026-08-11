#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color (reset)

# Identifying Public IP
PUBLIC_IP=$(curl -s ifconfig.me)

#Identifying Private IP
PRIVATE_IP=$(ifconfig | grep broadcast | awk '{print $2}')

#Identifying MAC Address and covering sensitive portions
FULL_MAC_ADDRESS=$(ifconfig | grep ether | awk '{print $2}')
MASKED_MAC="${FULL_MAC_ADDRESS:0:8}:XX:XX:XX"

echo -e "\n${CYAN}==============================="
echo -e "${YELLOW}         Network Info"
echo -e "${CYAN}===============================${NC}"

#Displaying Public IP, Private IP and MAC Address
echo -e "${YELLOW}Public IP:   ${WHITE}$PUBLIC_IP"
echo -e "${YELLOW}Private IP:  ${GREEN}$PRIVATE_IP${NC}"
echo -e "${YELLOW}MAC Address: ${RED}$MASKED_MAC"
echo -e "${CYAN}===============================${NC}\n"

#Displaying the percentage of CPU usage for the top 5 processes
echo -e "\n${YELLOW} Top 5 Processes by CPU Usage${NC}"
echo -e "${CYAN}===============================${NC}"
ps -eo %cpu,comm --sort=-%cpu | head -n 6
echo -e "${CYAN}===============================${NC}\n"

#Displaying memory usage statistics: total and available memory
echo -e "\n${YELLOW}         Memory Usage${NC}"
echo -e "${CYAN}===============================${NC}"
free -h | awk '/Mem:/ {print "Total: "$2", Available: "$7}'
echo -e "${CYAN}===============================${NC}\n"

#Listing active system services with their status
echo -e "\n${YELLOW}       Running Services${NC}"
echo -e "${CYAN}===============================${NC}"
service --status-all | grep -F '[ + ]'
echo -e "${CYAN}===============================${NC}\n"

#Locating the Top 10 Largest Files in /home and showing their sizes in bytes
echo -e "\n${YELLOW} Top 10 Largest Files in /home${NC}"
echo -e "${CYAN}===============================${NC}"
find /home -type f -exec du -b {} + | sort -nr | head -n 10
echo -e "${CYAN}===============================${NC}"
