##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 #
#        URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################

# Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

# Git
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1

# Shell prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] [\[\e[0m\]\[\e[1;34m\]\t\[\e[0m\]\[\e[1;34m\]] \[\e[01;34m\][\w]\[\033[00m\]\n\[\e[00m\]└─[\[\e[0m\]\[\e[00m\]\$\[\e[0m\]\[\e[00m\]]›\[\033[01;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\[\e[0m\] $ '

# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi

##############################################################################
# 02. Aliases                                                                #
##############################################################################
# Enable colors in "ls" command output
alias ls="ls -Glah"

##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=GxFxCxDxBxegedabagaced
