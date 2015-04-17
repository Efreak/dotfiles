# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2 numeric
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=10000
setopt autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install

if [[ "$TERM" == "screen" ]]
	then
		export TERM=screen-256color #if it breaks something, it's because you're stupid, not because it shouldn't be done
		source $HOME/.antigen/antigen-repo/antigen.zsh
		source $HOME/source/dotfiles/sources/command-not-found.init.zsh
		antigen bundle unixorn/autoupdate-antigen.zshplugin
		antigen bundle nojhan/liquidprompt
		antigen bundle zsh-users/zsh-syntax-highlighting
		antigen bundle heroku
		antigen bundle djui/alias-tips
		antigen bundle chrissicool/zsh-256color
		#antigen bundle chrissicool/zsh-bash
		#antigen bundle joel-porquet/zsh-dircolors-solarized.git
		#antigen use prezto

		# ~/.bashrc: executed by bash(1) for non-login shells.
		# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
		# for examples

		# If not running interactively, don't do anything
		case $- in
			*i*) ;;
				*) return;;
		esac

		# don't put duplicate lines or lines starting with space in the history.
		# See bash(1) for more options
		HISTCONTROL=ignoreboth #no idea if this works on zsh, but it can't hurt...

		# make less more friendly for non-text input files, see lesspipe(1)
		[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

		# enable color support of ls and also add handy aliases
		if [ -x /usr/bin/dircolors ]; then
			test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
			alias ls='ls --color=auto'
			alias dir='dir --color=auto'
			alias vdir='vdir --color=auto'

			alias grep='grep --color=auto'
			alias fgrep='fgrep --color=auto'
			alias egrep='egrep --color=auto'
		fi

		if [ -f ~/.bash_aliases ]; then
			. ~/.bash_aliases
		fi

		# enable programmable completion features (you don't need to enable
		# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
		# sources /etc/bash.bashrc).
#		if ! shopt -oq posix; then
#			if [ -f /usr/share/bash-completion/bash_completion ]; then
#				. /usr/share/bash-completion/bash_completion
#			elif [ -f /etc/bash_completion ]; then
#				. /etc/bash_completion
#			fi
#		fi

		if [ -f $HOME/.bash_funcs ]; then
			. $HOME/.bash_funcs
		fi

		### Added by the Heroku Toolbelt
		export PATH="/usr/local/heroku/bin:$PATH"
		#color manpages
		export PAGER="/usr/bin/most -s"

		keychain

		### npm autocomplete. Why is this not a script? Who knows.
		if ! type "npm" > /dev/null; then
			. <(npm completion)
		fi

		setopt HIST_NO_STORE INC_APPEND_HISTORY HIST_SAVE_NO_DUPS PUSHD_TO_HOME BASH_AUTO_LIST COMPLETE_ALIASES LIST_PACKED 
	else
		[ -r /home/efreak/.byobu/prompt ] && . /home/efreak/.byobu/prompt   #byobu-prompt#
fi
