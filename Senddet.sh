
#!/bin/bash
# Get date and time

IP=$(wget -qO- ipinfo.io/ip);
DATE=$(date +"%m-%d-%y")
######################### Colours ############################
ON_BLUE=$(echo -e "\033[44m")
RED=$(echo -e "\033[1;31m")
BLUE=$(echo -e "\033[1;34m")
GREEN=$(echo -e "\033[1;32m")
STD=$(echo -e "\033[0m") # Clear colour
vmesslink1="vmess://$(echo $acs | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"
##############################################################
echo "_____________________________________"
echo " "
echo "${GREEN} Title ${STD}"
echo " "
echo " ${RED} Message${STD}"
echo " "
echo "${GREEN} DATE:$DATE ${STD}"
echo "_____________________________________"
echo " "
######################## BOT INFO ############################
echo "Please enter your bot token"
read -rp "Bot_token : " -e bot_token
BOT_TOKEN="$bot_token"
echo "Please enter your chat id"
read -rp "chat id : " -e chat_id
CHAT_ID="$chat_id"
file_path=""
# Function to send a message to Telegram
send_message() {
  local message="$1"
 curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
 -d "chat_id=$CHAT_ID" \
 -d "text=$message"
}
send_message "${user}
${vmesslink1}
${vmesslink2}
${vmesslink3}"
echo " "
echo "_____________________________________"
echo " "
echo " ${RED} Message Sent ${STD}"
echo "_____________________________________"
echo " "
