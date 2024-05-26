#!/bin/bash

read -p $'\e[1;33m\e[33mDO YOU WANT TO CONTINUE? \e[1;31m (Y/N) : \e[0m' option
user=$(whoami)

checkingInternet(){
	echo -e "\e[1;94m\e[3;94mConnection checking....\e[0m"
    if nc -zw1 google.com 443; then
        echo -e '\e[1;90m[ \e[1;32m✓\e[1;90m ] INTERNET\e[0m'
		installFunc
    else
        echo -e '\e[1;90m[ \e[1;31m✗\e[1;90m ] INTERNET\e[0m'
		echo -e "\t\e[1;33mExiting...!"
		exit
    fi
}

installFunc() {
	sudo apt udpate && sudo apt upgrade
	sudo apt install bc build-essential libelf-dev 
	sudo apt-get install linux-headers-`uname -r`
	sudo apt install dkms
	sudo rmmod r8188eu.ko
	cd /opt
	sudo git clone https://github.com/KanuX-14/rtl8188eus.git
	cd /opt/rtl8188eus
	sudo echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
	sudo make
	sudo make install
	sudo modprobe 8188eu 
	sudo reboot
	echo 'rebooting...'
}

if [[ $option == *'N'* ]]; then
	clear
	echo -e "\t\e[1;33mExiting...!"
	exit
elif [[ $option == *'n'* ]]; then
	clear
	echo -e "\t\e[1;33mExiting...!"
	exit
elif [[ $option == *'Y'* ]]; then
    checkingInternet
elif [[ $option == *'y'* ]]; then
    checkingInternet
else
	clear
	echo -e "\t\e[1;33mExiting...!"
	exit
fi
