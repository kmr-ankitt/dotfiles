    export EDITOR=nvim
    export VISUAL=nvim


    #------------------- Aliases -------------------#

    alias l='ls -a'
    alias cl='clear' 
    alias pf='fastfetch'
    alias ff='fastfetch'
    alias ls='eza --icons'
    alias l='eza -a --icons'
    alias ll='eza -al --icons'
    alias lt='eza -a --tree --level=1 --icons'
    alias shutdown='systemctl poweroff'
    alias v='$EDITOR'
    alias wifi='nmtui'
    alias zd='cd /home/ankit/Dev'
    alias zp='cd /home/ankit/Downloads/'
    alias b='cd ..'
    alias c='code .  --ozone-platform-hint=wayland'
    alias x='xdg-open'
    alias rm='trash-put'
    alias clean='trash-empty'
    alias nv='nvim '
    alias lz='lazygit'
    alias update='sudo pacman -Syu && yay -Syu'
    alias q='exit'
    alias conf='nvim ~/.config/fish/config.fish'
    alias cache='sudo pacman -Scc'
    alias lzd='lazydocker'
    alias notes='$EDITOR ~/Documents/personal/notes.md'
    alias tn='tmux new-session -s'
    alias tl='tmux list-sessions'
    alias ta='tmux attach-session'
    alias code='code --ozone-platform-hint=wayland'
    alias dsa='~/Dev/shitcode/setupenv.sh'
    alias postman='postman --ozone-platform-hint=wayland'
    alias s='source ~/.config/fish/config.fish'

    function mkcd
        mkdir -p "$argv"
        z "$argv"
    end

    # PgAdmin
    alias pgadmin='source pgadmin4/bin/activate.fish && pgadmin4'


    set fish_greeting

    zoxide init fish | source
    starship init fish | source

    #-------------------------------------------------
    # Hyprland
    # -------------------------------------------------
    
    #-------------------------------------------------
    # TMUX
    #-------------------------------------------------

    if test -z "$TMUX"
    	tmux attach || tmux new-session
    end


    fastfetch --config ~/.config/fastfetch/config.jsonc


    export GPG_TTY=$(tty)
