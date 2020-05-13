PROMPT="%F{130}%T %n:%1d$%f "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -aGFh'


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

# For MPLAB XC32 Compiler
export PATH="$PATH:"/Applications/microchip/xc32/v2.15/bin""

# Aliases
# Establising custom commands
alias ssh_ros='ssh -Y aprotyas@ros.circ.rochester.edu'
alias ssh_csb='ssh -Y aprotyas@mnemosyne.ece.rochester.edu'
alias ssh_csc='ssh -Y aprotyas@cycle1.csug.rochester.edu'
# Changes based on my current needs
alias cdd='cd ~/Documents/Work/University\ of\ Rochester\ -\ Undergrad/Year\ 3/6.\ 2020\ Spring/'
#alias mars='open ~/Documents/Work/University\ of\ Rochester\ -\ Undergrad/Year\ 3/6.\ 2020\ Spring/ECE200/Mars4_5.jar'
# Smart completion. May be risky for clumsy fingers
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
