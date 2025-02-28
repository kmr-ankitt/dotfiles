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
    alias conf='nvim ~/.config/fish/config.fish'
    alias todo='bat ~/Dev/todo.md'    
    alias cax='make -C ~/Dev/Cax/ && cd ~/Dev/Cax/ && ./cax && cd -'
    alias cache='sudo pacman -Scc'
    alias nd='neovide '
    alias lzd='sudo lazydocker'

    function mkcd
        mkdir -p "$argv"
        cd "$argv"
    end


# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------
    alias notes='$EDITOR ~/Dev/notes.md'

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
    alias turso='cd  /home/ankit/.turso && ./turso'

    # PgAdmin
    alias pgadmin='source pgadmin4/bin/activate && pgadmin4'


    set fish_greeting

    zoxide init fish | source
    starship init fish | source

    
    #-------------------------------------------------
    # TMUX
    #-------------------------------------------------

    if test -z "$TMUX"
    tmux attach || tmux new-session
    end



# Created by `pipx` on 2024-07-03 03:01:15
export PATH="$PATH:/home/ankit/.local/bin"

export PATH="$PATH:/home/ankit/.cargo/bin"

#-------------------------------------------------
# Android Studio
#-------------------------------------------------
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"



# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
    cat ~/.cache/wal/sequences

# -----------------------------------------------------
# Fastfetch if on wm
# -----------------------------------------------------
    fastfetch --config examples/16



## Created by `pipx` on 2024-07-03 03:01:15
#    export PATH="$PATH:/home/ankit/.local/bin"
#



    #export NVM_DIR="$HOME/.nvm"
    #[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
## bun
#    export BUN_INSTALL="$HOME/.bun"
#    export PATH=$BUN_INSTALL/bin:$PATH
#
## zed
#    export PATH="$HOME/.local/bin:/usr/lib/ccache/bin:$PATH"
end
