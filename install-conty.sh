#!/bin/sh
if [ -f "conty.sh" ]; then
	doas install -m755 conty.sh /usr/local/bin/
else
	curl -LO https://github.com/samuelmarinsoto/Conty/releases/download/continuous/conty.sh
	doas install -m755 conty.sh /usr/local/bin/
fi

if [ -f "/usr/local/bin/conty.sh" ]; then
	mkdir -p $HOME/Games
	HOME_DIR=$HOME/Games SANDBOX_LEVEL=1 /usr/local/bin/conty.sh -d
fi
