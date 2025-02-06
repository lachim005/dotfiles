source ~/.shell-scripts/load.sh
source ~/.crap-templates/crap.sh

alias net="nmtui"
alias bt="bluetui"
alias cl="clear"
alias sdn="shutdown now"
alias gz="gzip"
alias gits="git status"
alias gita="git add"
alias gitc="git commit -m"
alias gitp="git push"
alias ex="exit"
alias nv="nvim"
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -al --color=auto'
alias grep='grep --color=auto'
alias cd..='cd ..'
alias dc='cd'
alias ff='fastfetch'
alias ran='ranger'

function mkcd()
{
    mkdir -p $1
    cd $1
}

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
setopt autocd extendedglob nomatch
setopt NO_CASE_GLOB
unsetopt BEEP
bindkey -v
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

export PATH=$PATH:~/.local/bin/
export PATH=$PATH:~/.cargo/bin/
export VISUAL=nvim
export EDITOR=nvim

eval "$(oh-my-posh init zsh --config $HOME/.config/omp/base.toml)"
