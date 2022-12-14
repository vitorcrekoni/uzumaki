#!/usr/bin/bash

CYAN="\033[1;36m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'
BRANCO='\033[1;37m'

clear

if [ -e "$HOME/../usr/bin/ruby" ]; then
	echo $GREEN"ruby detectado prosseguindo..."
	sleep 1
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED"lolcat não detectado, instalando..."
		gem install lolcat
	fi
else
	echo $RED"Você não instalou o ruby, instalando..."
	sleep 1
	apt install ruby
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"lolcat detectado prosseguindo..."
		sleep 1
	else
		echo $RED"lolcat não detectado, instalando..."
		gem install lolcat
	fi
fi

clear

figlet -c -f slant -t 'C & F'| lolcat 

echo  "Obrigado por usar nosso bot! \n\n" | lolcat -a -d 20

clear

figlet -c -f slant -t 'UZUMAKI BOT'| lolcat 
echo "\n${RED}[+] SE INSCREVA NOS CANAIS DO Clover Mods E FROST?.m4a♣️"

while : 
do
echo "\n${BRANCO}INICIANDO,AGUARDE..."
    node uzumaki.js
    
done