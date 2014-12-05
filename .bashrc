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

# Git
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1

# Shell prompt
export PS1='\u@\h [\[\e[0m\]\[\e[0;32m\]\t\[\e[0m\]\[\e[00m\]]\[\e[00m\] [\W]\[\033[32m\]$(__git_ps1 " (%s)")\[\033[00m\]\n\[\e[00m\]└─[\[\e[0m\]\[\e[00m\]\$\[\e[0m\]\[\e[00m\]]›\[\e[0m\] $ '

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
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
