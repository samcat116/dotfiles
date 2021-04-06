# Dotfiles
Setup my entire environment with a single command using a combination of Ansible, Homebrew, and some other magic

This script should be able to install my prefered applications, scripts, and settings on any system that I want. It's designed to run on Linux, Windows, and macOS. 

## Installing
To install these dotfiles, simply run `ansible-playbook main.yaml`. It will autodetect the OS, and install the relevant packages and configurations. By default, Ansible will install to `localhost` if no hosts are specified. But you can easily point the playbook at a remote host if you want to install on a remote server you may need to interact with. 


# Things this installs
## Homebrew
* minikube
* aws-iam-authenticator
* Helm
* Terraform
* Yarn
* awscli
* Node
* thefuck
* zsh
* eksctl
* tmux
* zsh-completions


