#!/bin/bash

clear; #clear the scrn



exit_var=0 # declare finished var to exit with

while [ $exit_var -ne 1 ]
do

	echo " ############################################"
	echo "# What is your favorate Linux distribution? #"
	echo "############################################ "

	echo "##########################"
	echo "# 1 - Viod              ##"
	echo "# 2 - Arch              ##"
	echo "# 3 - Debian            ##"
	echo "# 4 - Centos            ##"
	echo "# 5 - Mint              ##"
	echo "# 6 - Ubuntu            ##"
	echo "# 7 - Something else... ##"
	echo "# 8 - Exit the script.  ##"
	echo "##########################"

	read -p "Enter your Chioce >> " user_choice; # declaring a var while input
	clear

	case $user_choice in
		1) echo "Void is a rolling release.";;
		2) echo "Arch is a rolling release.";;
		3) echo "Debian is a community distribution.";;
		4) echo "Centos is popular on servers.";;
		5) echo "Mint is popular on desktios and laptops.";;
		6) echo "Ubuntu is popular on both servers and computers.";;
		7) echo "There are many distribuntions out there.";;
		8)
			exit_var=1

			echo    " ###################################"
			echo    "# Thank you for using this script #"
			echo -e "################################## \n"
			break; # force breaking the loop
			;;
		*) echo "you didn't enter an appropriate choice."
	esac

	echo 
	read -p "Press [Eentr] to go menue...";
	clear

done

