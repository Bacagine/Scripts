#!/bin/bash

# menu.sh
# Programa criado por Gustavo Bacagine <gustavobacagine@protonmail.com>
# Data: dd/mm/aaaa

echo "****************MENU*****************"
echo "* 1) *"
echo "* 2) *"
echo "* 3) Sair                           *"
echo "*************************************"
read op

while op  
do

	case $op in
		1)
			function1
			;;
		2)
			function2
			;;
		3)
			break
			;;
		*)
			echo "Opçao inválida!"
	esac

done
