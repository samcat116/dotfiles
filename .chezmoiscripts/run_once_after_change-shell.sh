#!/bin/bash
if [[ $SHELL != "/bin/zsh" ]]   ; then
	echo "ZSH not found, installing..."
	if [ -f /etc/lsb-release ]; then
		if [ "$EUID" -ne 0 ]; then
			sudo apt install zsh -y
		else
			apt install zsh -y
		fi	
	elif [ -f /etc/redhat-release ]; then
		if [ "$EUID" -ne 0 ]; then
			sudo yum install zsh git util-linux-user -y
		else
			yum install zsh git util-linux-user -y
		fi	
	fi
	echo "Installing Oh-My-Zsh"
	git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
	echo "Installing PowerLevel10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo "Changing default shell for $USER"
	if [ "$EUID" -ne 0 ]; then
			sudo chsh -s $(which zsh)
		else
			chsh -s $(which zsh)
		fi
	exec zsh
fi
