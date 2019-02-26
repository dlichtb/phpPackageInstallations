#!/bin/bash

echo "To Install PHPMYADMIN you are agreeing to install the following PHP Packages:"
echo "==============================================================================================================================="
echo "- phpmyadmin - php-mbstring - php-gettext -"
echo ""
echo "Press Y/y to CONTINUE, anything else to CANCEL: "
read response1
if [ $response1 == "y" ] || [ $response1 == "Y"]
then
	sudo apt-get update

	# Install package dependencies
	sudo apt-get install phpmyadmin php-mbstring php-gettext -y

	# Enable necessary package extensions
	sudo phpenmod mcrypt
	sudo phpenmod mbstring

	# Restart apache2
	sudo systemctl restart apache2
	exit
else
	exit
fi

##	IN BROWSER:	https://192.168.0.112/phpmyadmin
##				username: root
##				password: Taylor88!

