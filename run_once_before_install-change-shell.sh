#!/bin/sh
if [ ! -f ~/.zshrc ] ; then
	echo "ZSH not found, installing..."
	if [ -f /etc/lsb-release ] ; then
		sudo apt install zsh -y
	elif [ -f /etc/redhat-release ]; then
		sudo yum install zsh -y
	fi
	echo "Changing default shell for $USER"
	chsh -s $(which zsh)
	echo "Installing Oh-My-Zsh"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi