# -*- shell-script -*-

fpath=(`pwd`/zsh-functions.zsh $fpath)

function epochdate()
{
    ruby -r date -e "puts Time.at($1).to_datetime"
}

function trim()
{
    echo $1 | sed 's/^ *//g' | sed 's/^ *//g'
}

# rename .txt files to asciidoc files
function rename_adoc()
{
    files=( `find . | fgrep .txt` )
    for file in $files
    do
        cp ${file} ${file%.txt}.adoc
    done
}

# encryption/decryption
function encrypt()
{
    [ -z "$1" ] && echo 'Encrypt: encrypt FILE' && return 1
    openssl aes-256-cbc -a -salt -in "$1" -out "$1.enc"
}

function decrypt()
{
    test -z "$1" -o -z "$2" && echo \
        'Decrypt: decrypt INFILE OUTFILE' && return 1
    openssl aes-256-cbc -d -a -salt -in "$1" -out "$2"
}

function tidy() # Remove EMACS backup files and DS_Store files
{
    if [[ "$1" == "-r" ]];
    then
        /bin/bash -c 'find . -name "*~" -or -name ".*~" -or -name "\#*" -or -name ".DS*" -or -name ".\#*" | xargs rm -vf'
    else
        /bin/bash -c "rm -vf *~ .*~ \#* .DS* .\#*"
    fi
}

# Backup
function bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }

function ii()   # get current host related info
{
    RED='\e[1;31m'          # Red
    NC='\e[0m'              # No Color
    echo -e "\nYou are logged on ${RED}`hostname`"
    echo -e "\nAdditional information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; who
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    my_ip 2>&- ;
    echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
    echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
    echo
}
