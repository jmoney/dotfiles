# -*- shell-script -*-

# Aliases
# LS CONFIGURATIONS
alias la='ls -A'
alias lla='ls -la | less'
alias ll='ls -lh'
alias lm='ll | less'
if [ -d $(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin ]; then
    alias ls='ls -F --color --group-directories-first'
fi
alias lx='ls -lXB'
alias lt='ls -lTt'
alias recent='ls -lAt | head'

#OTHER ALIASES
alias cp='cp -iv'
alias mv='mv -iv'
alias sl='ln -sf'
alias rm='rm -iv'
alias du='du -kh'
alias df='df -kTh'
alias size\-dir='du -sk'
alias mkdir='mkdir -p'
alias which='type'
alias more='less'
alias path='echo -e ${PATH//:/\\n}'
alias grep='grep --color'

alias uuid4='python -c "import uuid; print uuid.uuid4()"'
alias epoch='date %s'
