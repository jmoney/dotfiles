#!/bin/bash

escapecode=$(printf '\033')
mac_zsh_files()
{
    echo "$escapecode[1;33mChecking for mac version of zshrc file$escapecode[0m"
    if [ ! -f ${HOME}/.zshrc ]; then
        echo "$escapecode[1;32m$escapecode[1;32mLinking mac version of zshrc$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/zsh/zshrc .zshrc
    else
        echo "$escapecode[1;31mzshrc already exists$escapecode[0m"
    fi
}

emacs_config_files()
{
    echo "$escapecode[1;33mChecking for emacs config file$escapecode[0m"
    if [[ ! -f ${HOME}/.emacs ]]
    then
        echo "$escapecode[1;32mLinking emacs config file$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/emacs/emacs .emacs
    else
        echo "$escapecode[1;31memacs config file already exists"
    fi

    echo ""
    echo "$escapecode[1;33mChecking for user_emacs config file$escapecode[0m"
    if [[ ! -f ${HOME}/.user_emacs ]]
    then
        echo "$escapecode[1;32mLinking user_emacs config file$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/emacs/user_emacs .user_emacs
    else
        echo "$escapecode[1;31muser_emacs config file already exists$escapecode[0m"
    fi

    echo ""
    echo "$escapecode[1;33mChecking for elisp directory$escapecode[0m"
    if [[ ! -d ${HOME}/.elisp ]]
    then
        echo "$escapecode[1;32mLinking elisp directory$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/emacs/elisp .elisp
    else
        echo "$escapecode[1;31melisp directory already exists$escapecode[0m"
    fi
}

ssh_config_files()
{
    echo "$escapecode[1;33mChecking for ssh config file$escapecode[0m"
    if [[ ! -f ${HOME}/.ssh/config ]]
    then
        echo "$escapecode[1;32mLinking ssh config file$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/ssh/config .ssh/config
    else
        echo "$escapecode[1;31mssh config file already exists$escapecode[0m"
    fi
}

git_config_files()
{
    echo "$escapecode[1;33mChecking for gitignore global file$escapecode[0m"
    if [[ ! -f ${HOME}/.gitignore_global ]]
    then
        echo "$escapecode[1;32mLinking gitignore global file$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/git/gitignore .gitignore_global
    else
        echo "$escapecode[1;31mglobal gitignore file already exists$escapecode[0m"
    fi

    echo ""
    echo "$escapecode[1;33mChecking for gitconfig global file$escapecode[0m"
    if [[ ! -f ${HOME}/.gitconfig ]]
    then
        echo "$escapecode[1;32mLinking gitconfig global file$escapecode[0m"
        ln -s ${HOME}/Library/dotfiles/git/gitconfig .gitconfig
    else
        echo "$escapecode[1;31mglobal gitconfig file already exists$escapecode[0m"
    fi
}

cd ${HOME}

mac_zsh_files

echo ""
emacs_config_files

echo ""
ssh_config_files

echo ""
git_config_files
