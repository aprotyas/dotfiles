# Homebrew completions
# Note: has to come before we call `compinit`
[[ -d /opt/homebrew/share/zsh/site-functions ]] && fpath+=(/opt/homebrew/share/zsh/site-functions)

# z shell helpers
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Internal --> Safari, OpenSource --> WebKit
path+=('/Users/aprotyas/dev/safari/Internal/Tools/Scripts')
path+=('/Users/aprotyas/dev/safari/OpenSource/Tools/Scripts')

# Perp
path+=('/Users/aprotyas/dev/tools/perp/bin')
source /Users/aprotyas/dev/tools/perp/extras/perp.completions

alias ll='ls -alF'
alias la='ls -A'

# Exa
alias ls='exa --git'
alias tree='exa --tree --git --long'

# Bat
alias bathelp='bat --plain --language=help'
help() {
	"$@" --help 2>&1 | bathelp
}

batdiff() {
	git diff --name-only --relative --diff-filter=d | xargs bat
}

rgbat() {
	rg --pretty "$@" | bat
}

# Git prompt customization
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'

export GPG_TTY=$(tty)
