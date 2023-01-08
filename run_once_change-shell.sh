#!/bin/sh
if [ $SHELL != "/bin/zsh" ]   ; then
	echo "ZSH not found, installing..."
	if [ -f /etc/lsb-release  ] || [ -f /etc/os-release ]; then
		if ["$EUID" -ne 0]; then
			apt install zsh -y
		elif
			sudo apt install zsh -y
		fi	
	elif [ -f /etc/redhat-release ]; then
		if ["$EUID" -ne 0]; then
			yum install zsh git util-linux-user -y
		elif
			sudo yum install zsh git util-linux-user -y
		fi	
		
	fi
	echo "Changing default shell for $USER"
	chsh -s $(which zsh)
	exec zsh
	echo "Installing Oh-My-Zsh"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "Installing PowerLevel10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
	source ~/.zshrc
	source ~/.p10k.zsh
fi