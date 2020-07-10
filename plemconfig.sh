#!/bin/sh

LOGFILE=logfile.txt

exec 6>&1

exec >$LOGFILE

sudo find / | grep ~/.emacs




echo $?

if ($true)
then

mcs='~/.emacs'
mcsdir='~/.emacs.d'

sudo cp $PWD/plugins.el ~/.emacs.d/

echo '(setq custom-file "'$mcsdir'/plugins.el")' >> ~/.emacs
echo '(load custom-file)' >> ~/.emacs
rm logfile.txt
else 
	rm logfile.txt
	exit 1
fi
