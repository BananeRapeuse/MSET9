#!/bin/sh
if which python3 >/dev/null; then
	# use exec here to release shell and thus sd card, allow it to be umounted
	exec python3 "$(cd "$(dirname "$0")" && pwd)/mset9.py"
else
	echo "Python 3 n'est pas installé."
	echo "Installez Python 3 et ré-essayez."
	echo "https://www.python.org/downloads/"
	echo "Appuyez sur entrée pour sortir du terminal ..."
	read DUMMY
fi
