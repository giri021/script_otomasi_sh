#!/bin/bash

jawaban="Y"

read -p "Apakah kamu yakin akan melakukan setup Apps Web ini?(Y/n) " pilih;

if [ $pilih==$jawaban ];
then
	echo " Downloading Data "
	cd
	wget https://github.com/sdcilsy/sosial-media/archive/master.zip
	echo " Ekstrak File master.zip "
	unzip master.zip
	echo " Menghapus isi dari /var/www/html/* "
	sudo rm -Rf /var/www/html/*
	echo " Memindahkan isi direktori sosial-media-master/* ke /var/www/html "
	sudo mv sosial-media-master/* /var/www/html
	echo " Setup Selesai .. Well Done Giri "
	exit 0
else
	echo " Setup ditunda atau dibatalkan Giri "
	exit 1
fi 

