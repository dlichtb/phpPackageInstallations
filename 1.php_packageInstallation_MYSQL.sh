#!/bin/bash

echo "To Install PHP7.0 Package Installations for MYSQL-DB Support in PHP you are agreeing to install the following PHP Packages:"
echo "==============================================================================================================================="
echo "- php7.0-mysql - php7.0-curl - php7.0-gd - php7.0-intl - php-pear - php-imagick - php7.0-imap - php7.0-mcrypt - php7.0-memcache - php7.0-pspell - php7.0-recode - php7.0-sqlite3 - php7.0-tidy - php7.0-xmlrpc - php7.0-xsl - php7.0-mbstring - php7.0-gettext"
echo ""
echo "Press Y/y to CONTINUE, anything else to CANCEL: "
read response1
if [ $response1 == "y" ] || [ $response1 == "Y"]
then
	sudo apt-get install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext -y
	# Restart apache2
	sudo systemctl restart apache2
	exit
else
	exit
fi
