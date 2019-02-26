#!/bin/bash

echo "To Install PHP7.0 Package Installations for increasing PHP-Speed:"
echo "================================================================="
echo "- php7.0-opcache - php-apcu -"
echo ""
echo "Press Y/y to CONTINUE, anything else to CANCEL: "
read response1
if [ $response1 == "y" ] || [ $response1 == "Y"]
then
	sudo apt-get install php7.0-opcache php-apcu -y
	# Restart apache2
	sudo systemctl restart apache2
	exit
else
	exit
fi
