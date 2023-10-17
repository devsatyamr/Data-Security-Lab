#! /bin/bash
# Set the color variable
green='\033[0;32m'
red='\033[0;31m'
# Clear the color after that
clear='\033[0m'

iterations=3
user_ip=$(curl -s ifconfig.me)
user=$(whoami)
# Start the loading animation
for i in $(seq 1 $iterations); do
    # Clear the line
    echo -e "\r\033[K"

    # Print the loading indicator
    echo -e "Starting..."

    # Sleep for 1 second
    sleep 1
done

# Clear the line and print the completion message
echo -e "\r\033[K"
echo -e "Loading complete!"
figlet "DATA SECURITY LAB" -f smslant -c
echo "2023, All copyright reserved to Mr. Devsatyam Ray."
sleep 1
echo "The current user is: $user"
echo "Your public IP address is: $user_ip"
sleep 1
echo "Menu:"
printf "1.${green}Steganography${clear}\n"
printf "2.${red}Cryptography${clear}\n"
echo "Select option: "
read option

if [ $option -eq 2 ]; then
	echo "1.Encrypt"
	echo "2.Decrypt"
	read option1
	if [ $option1 -eq 1 ]; then
		python3 thanos.py
	elif [ $option1 -eq 2 ]; then
		python3 thor.py
	else
		echo "Invalid Option!!"
	fi
elif [ $option -eq 1 ]; then
	echo "1.Encode data in a picture."
	echo "2.Decode data from a picture."
	read option2
	if [ $option2 -eq 1 ]; then
		bash encode.sh
	elif [ $option2 -eq 2 ]; then
		bash decode.sh
	else
		echo "Invalid Option!"
	fi
else
	echo "INVALID OPTION!!"
fi
