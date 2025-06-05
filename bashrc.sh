eval "$(dircolors -b ~/.dircolors)" 

# set variables environment
export EDITOR=nvim
export VISUAL=nvim

export XCURSOR_THEME="Bibata-Modern-Classic"
export XCURSOR_SIZE=16

# kalau mau setting custom path
export STARSHIP_CONFIG=~/.config/archlinux-dotfiles/starship/starship.toml
export STARSHIP_CACHE=~/.config/archlinux-dotfiles/starship/cache

export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland

export XDG_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland

export PATH=$PATH:/usr/local/bin

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias ls='exa --icons -F -H --group-directories-first --git -1'
alias grep='grep --color=auto'
alias cd-to-arch='cd ~/.config/archlinux-dotfiles/'

PS1='[\u@\h \W]\$ '
PATH=$PATH:/opt/vscode/bin/

export PATH=$PATH:/home/anilaken/.spicetify
