#!/bin/sh
USER=$USER
if [ ! -d "~/.zshrc" ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi