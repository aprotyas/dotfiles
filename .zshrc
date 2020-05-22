
# colors
set     red="%{\e[1;31m%}"
set   green="%{\e[0;32m%}"
set  yellow="%{\e[1;33m%}"
set    blue="%{\e[1;34m%}"
set magenta="%{\e[1;35m%}"
set    cyan="%{\e[1;36m%}"
set   white="%{\e[0;37m%}"
set     end="%{\e[0m%}"     # Terminating


PROMPT="${white}[%F{130}%T ${green}%n:${white}%1d%f ]%#${end} "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export PATH="$PATH:"/Applications/microchip/xc32/v2.15/bin""

# Aliases
# Establising custom commands

alias ssh_ros='ssh -Y aprotyas@ros.circ.rochester.edu'
alias ssh_csb='ssh -Y aprotyas@mnemosyne.ece.rochester.edu'
alias ssh_csc='ssh -Y aprotyas@cycle1.csug.rochester.edu'
alias cdd='cd ~/Documents/Work/University\ of\ Rochester\ -\ Undergrad/Year\ 3/6.\ 2020\ Spring/'
alias mars='open ~/Documents/Work/University\ of\ Rochester\ -\ Undergrad/Year\ 3/6.\ 2020\ Spring/ECE200/Mars4_5.jar'
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
