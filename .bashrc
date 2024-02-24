#
# ~/.bashrc
#
# Wayland Flameshot
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export SDL_VIDEODRIVER=wayland
	export _JAVA_AWT_WM_NONREPARENTING=1
	export QT_QPA_PLATFORM=wayland
	export XDG_CURRENT_DESKTOP=sway
	export XDG_SESSION_DESKTOP=sway
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Meme Aliases
alias nano="micro"

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias uninstall="sudo pacman -Rns"
alias yuninstall="yay -Rns"
alias autoremove="sudo pacman -Rns"
alias gitui="gitui -t mocha.ron"


export "MICRO_TRUECOLOR=1"
export EDITOR="micro"
source "/home/isabel/Scripts/mocha.sh"
export PS1=" \[\e[00;35m\]λ \W \[\e[0m\]"

# Created by `pipx` on 2023-08-01 03:16:26
export PATH="$PATH:/home/isabel/.local/bin"
