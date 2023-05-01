#!/bin/bash
# Made by Katarzyna Studnicka - 25 Script Themes in GNU LINUX

tput clear

echo -e "\nScript's menu:\n"
echo "Script 1: Create user and checks if the user exist"
echo "Script 2: Remove user"
echo "Script 3: Create password for the user"
echo "Script 4: Remove user password" 
echo "Script 5: Change password"
echo "Script 6: Add permissions to the user: execute, write, read"
echo "Script 7: Remove permissions from the user: execute, write, read" 
echo "Script 8: Create group"
echo "Script 9: Add user to the group" 
echo "Script 10: Remove user from the group"
echo "Script 11: Remove group"
echo "Script 12: Create password for the group"
echo "Script 13: Create a directory"
echo "Script 14: Change permissions of files and directores"
echo "Script 15: Automatic system and application updates"
echo "Script 16: Displays lists of files and directores with information about perrmissions"
echo "Script 17: Create LVM volume based on an existing physical disk"
echo "Script 18: Display a list of all processes running on the system with information about their PID, name and status"
echo "Script 19: Backup files and directores to a remote location"
echo "Script 20: Monitor system resource: CPU, memory, disk space"
echo "Script 21: Install and configure sofware packages on the system"
echo "Script 22: Silent ping which displays the lowest and highest ping"
echo "Script 23: Check and remove duplicates in a file"

echo "99 - Exit from menu"
echo ""

read -p "Choose script to run: " CHOICE

case $CHOICE in
	1) 
		# Made by Katarzyna Studnicka
		./bash/script-create-user.bash
		;;

	7) 
		# Made by Karolina Kominiak
		./bash/script-remove-permissions.bash
		;;

	11)     # Made by Robert Kania
                echo "Podaj grupę: "
                read group
                ./bash/script-delete-group.bash $group
		;;
	99) 
		echo -e "\nExit from menu in 5 sec. Good bye.\n"
		sleep 5
		;;
	*) 
		echo -e "\nYou've made a choice out of scope. Return to menu in 5 sec.\n"
		sleep 5
		./menu
		;;
esac

