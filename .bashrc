# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# ----------------------------------------------------- ALIASES ----------------------------------------------------- 

alias cl='clear' 
alias nf='neofetch'
alias ff='fastfetch'
alias ls='eza --icons'
alias l='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias vim='$EDITOR'
alias matrix='cmatrix'
alias wifi='nmtui'
alias zd='cd /home/ankit/Dev'
alias zp='cd /home/ankit/Downloads/'
alias b='cd ..'
alias c='code .'
alias x='xdg-open'
alias rm='trash-put'
alias clean='trash-empty'
alias zed='zeditor'
alias nv='nvim '
alias lz='lazygit'
alias mkcd='function _mkcd(){ mkdir -p "$1"; cd "$1"; }; _mkcd'
alias notes='nvim /home/ankit/Dev/notes.txt'

# PgAdmin
alias pgadmin='source pgadmin4/bin/activate && pgadmin4'


# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'

eval "$(starship init bash)"
eval "$(zoxide init bash)"

fastfetch --config ~/.config/fastfetch/config.jsonc

. "$HOME/.cargo/env"
