#!/bin/bash
clear
echo '   ┕━━━━╗✹╔━━━━┙
echo '╔━═━═━︽︾♚︾︽━═━═━╗
echo '     1 — Termux
echo '     2 —  Unix
echo '     3 —  iSH
echo '╚━═━═━︾︽♔︽︾━═━═━╝
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/bomber/spammer.py $PREFIX/bin/bomber
	dos2unix $PREFIX/bin/bomber
	chmod -R 777 ~/bomber
	chmod 777 $PREFIX/bin/bomber
	bomber
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/bomber/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/bomber/spammer.py $PREFIX/bin/bomber
			dos2unix $RPEFIX/bin/bomber
			chmod 777 $RPEFIX/bin/bomber
			chmod -R 777 ~/bomber
			bomber
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/bomber/spammer.py /usr/bin/bomber
			dos2unix /usr/bin/bomber
			chmod 777 /usr/bin/bomber
			bomber
		else
			echo "Некорректный ввод"
		fi
	fi
fi
