# -*- shell-script -*-

# HomeBrew
if [ -f /usr/local/bin/brew ] ; then
    [ -d $(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin ] && PATH=$(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin:$PATH
fi

