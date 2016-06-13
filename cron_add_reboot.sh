#!/bin/bash

if [[ `whoami` != "root" ]]; then
	echo "Prosim pustit jako root."
	exit
fi

if [[ $1 == "" ]]; then
	echo "Zadejte parametr ve formatu 70xx nebo 71xx."
	exit
fi

ID="$1"

if [[ $ID > 7100 ]]; then
	minutes=$(( $ID - 7100 ))
else
	minutes=$(( $ID - 7000 ))
fi

echo "$minutes 3 * * * root `which reboot`" >> /etc/crontab

echo "Pridan zaznam: "
echo "$minutes 3 * * * root `which reboot`" 
echo "do /etc/crontab, pokud je spatne, je potreba ho rucne smazat ( [sudo] vi /etc/crontab a 2x zmacknout d na danem radku )."
