#!/bin/bash

jawaban="Y"
jawab:"y"
read -p "Apakah kamu akan melakukan instalasi webserver di Ubuntu ini? (Y/n) " pilih;

#echo $pilih

if [ $pilih==$jawaban ];
then

	echo " Menyiapkan Instalasi Web Server"
	sudo apt-get update
	echo " Melakukan Instalasi Web Server Apache2"
	sudo apt-get install --y apache2 php php-mysql
	echo " Melakukan Instalasi Database Server "
	sudo apt-get install --y mysql-server
	echo " Instalasi Selesai .. Good Job "
	exit 0

elif [ $pilih==$jawab ];
then
	echo " Menyiapkan Instalasi Web Server "
	sudo apt-get update
	echo " Melakukan Instalasi Web Server Apache2 "
	sudo apt-get install --y apache2 php php-mysql
	echo " Melakukan Instalasi Database Server "
	sudo apt-get install --y mysql-server
	echo " Instlasai Selesai .. Well Done "
	exit 0
else
	echo " Instalasi dibatalkan "
	exit 1
fi
