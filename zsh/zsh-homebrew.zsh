# -*- shell-script -*-

# HomeBrew
if [ -f /usr/local/bin/brew ] ; then
    [ -d $(brew --prefix coreutils)/libexec/gnubin ] && PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
fi

