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
alias pjson='python -mjson.tool'
alias pxml='python -c "from lxml import etree; import sys; print etree.tostring(etree.fromstring(str("").join(sys.stdin.readlines())), pretty_print=True);"'
alias epoch='python -c "import time; print time.time()"'
alias epcohdate='ruby -r date -e "puts Time.at($1).to_datetime"'
alias weather='telnet rainmaker.wunderground.com'
alias starwars='telnet towel.blinkenlights.nl'

alias java18='export JAVA_HOME=`/usr/libexec/java_home -v 1.8`'
alias java17='export JAVA_HOME=`/usr/libexec/java_home -v 1.7`'
alias java16='export JAVA_HOME=`/usr/libexec/java_home -v 1.6`'

alias mvn2='/usr/local/Cellar/maven2/2.2.1/libexec/bin/mvn'
