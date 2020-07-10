#!/bin/sh

LOGFILE=logfile.txt

exec 6>&1

exec >$LOGFILE

sudo find / | grep $HOME/.emacs




echo $?

if ($true)
then
exec 1>&6 6>&-
mcs=$HOME/.emacs
mcsdir=$HOME/.emacs.d/

sudo cp $PWD/plugins.el $HOME/.emacs.d/
sudo cp $HOME/.emacs $HOME/.emacs.backup
echo '(setq custom-file "'$mcsdir'/plugins.el")' >> $HOME/.emacs
echo '(load custom-file)' >> $HOME/.emacs
rm logfile.txt
else 
	exec 1>&6 6>&-
	rm logfile.txt
	exit 1
fi
