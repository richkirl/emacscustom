#!/bin/sh

mcs='~/.emacs'
mcsdir='~/.emacs.d'

sudo cp $PWD/plugins.el ~/.emacs.d/

echo '(setq custom-file "'$mcsdir'/plugins.el")' >> ~/.emacs
echo '(load custom-file)' >> ~/.emacs
