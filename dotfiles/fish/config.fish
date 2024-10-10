if status is-interactive
    # Commands to run in interactive sessions can go here


    export EDITOR=nvim
    export VISUAL=nvim


    #------------------- Aliases -------------------#

    alias l='ls -a'
    alias cl='clear' 
    alias nf='neofetch'
    alias pf='fastfetch'
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
    alias h='Hyprland'
    alias zd='cd /home/ankit/Dev'
    alias zp='cd /home/ankit/Downloads/'
    alias b='cd ..'
    alias c='code .'
    alias x='xdg-open'
    alias rm='trash-put'
    alias clean='trash-empty'
    alias zed='zeditor'
    alias gpt='brave --app=https://chat.openai.com'
    alias nv='nvim '
    alias lz='lazygit'
    alias update='sudo pacman -Syu && yay -Syu'
    alias q='exit'

    function mkcd
        mkdir -p "$argv"
        cd "$argv"
    end



# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------
    alias notes='$EDITOR ~/Dev/notes.txt'

# -----------------------------------------------------
# GIT
# -----------------------------------------------------
    alias gs="git status"
    alias ga="git add"
    alias gc="git commit -m"
    alias gp="git push"
    alias gpl="git pull"
    alias gst="git stash"
    alias gsp="git stash; git pull"
    alias gcheck="git checkout"
    alias gcredential="git config credential.helper store"


# PgAdmin
    alias pgadmin='source pgadmin4/bin/activate && pgadmin4'


    zoxide init fish | source
    starship init fish | source
end
