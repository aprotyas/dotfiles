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

path+=('/Users/aprotyas/.bat/extras/src')


# Git prompt customization
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red
PROMPT='[%T] %n@%m %1~ %F{red}${vcs_info_msg_0_}%f %# '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

perp() {
	perp_bin_path="/Users/aprotyas/dev/tools/perp/bin/perp"
	echo "PERP_BIN_PATH: $perp_bin_path"

	if [[ -v PERP_BUILD_PATH ]]; then
		perp_build_path=$PERP_BUILD_PATH
	else
		perp_build_path="/Users/aprotyas/Build/Products"
	fi
	echo "PERP_BUILD_PATH: $perp_build_path"
	PERP_BUILD_PATH=$perp_build_path $perp_bin_path "$@"
}

alias code="open -a XCode2"

path+=('/Applications/Sublime Text.app/Contents/SharedSupport/bin')

alias codename='smcif -k RPlt | xxd -r -p && echo'
