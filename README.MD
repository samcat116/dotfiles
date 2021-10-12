# Dotfiles
Setup my entire environment with a single command using a combination of Ansible, Homebrew, and some other magic

This script should be able to install my prefered applications, scripts, and settings on any system that I want. It's designed to run on Linux, Windows, and macOS. It also supports setups such as Github Codespaces and other container based dev environments

I manage my dotfiles with a tool called Chezmoi. This tool piggy backs off of git and handles the complexity of linking, updating, and templating out differences across platforms. 

## Installation
To setup a new machine, run
```console
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply samcat116
```
This will install Chezmoi and pull in and configure everything.

To install this config on a short lived machine (aka don't keep Chezmoi around after everything is configured), run 
```console
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --one-shot samcat116
```

