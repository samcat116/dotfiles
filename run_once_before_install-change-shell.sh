#!/bin/sh
if [ ! -f ~/.zshrc ] ; then
	echo "ZSH not found, installing..."
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi