# -*- shell-script -*-

# TAILORING LESSS
export PAGER='less'
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f :stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

#COLORS FOR CERTAIN THINGS DISPLAYED BY LS
# Black       0;30     Bold Gray    1;30
# Blue        0;34     Bold Blue    1;34
# Green       0;32     Bold Green   1;32
# Cyan        0;36     Bold Cyan    1;36
# Red         0;31     Bold Red     1;31
# Purple      0;35     Bold Purple  1;35
# Yellow      0;33     Bold Yellow  1;33
# White       0;37     Bold White   1;37

export LS_COLORS=${LS_COLORS}:'di=01;34:ln=1;4;36:ex=1;4;33'
export LS_COLORS=${LS_COLORS}:'*.xml=1;91;100:*.a=1;4;37'
export LS_COLORS=${LS_COLORS}:'*.h=36:*.c=93:*.java=93:*.f=1;30:*.class=4;32:*.o=4;32:*.S=32:*.f90=1;30:*.m=96:*.tex=92:*.pdf=91'
export GREP_COLOR='00;38;5;226'
