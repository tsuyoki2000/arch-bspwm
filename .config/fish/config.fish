if status is-interactive
    # Commands to run in interactive sessions can go here
end

# エイリアス
alias c='clear'
alias v='nvim'
alias vim='nvim'
alias pacup='sudo pacman -Syu'
alias cleanup='sudo pacman -Rs $(pacman -Qdtq)'
alias f='ranger'
alias wttr='curl wttr.in/?lang=ja'

#alias hibernate='systemctl hibernate'
#alias logout='loginctl terminate-user $USER'
#alias suspend='systemctl suspend'

# fish の挨拶文を無効化
set fish_greeting
