# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ "$TERM" == "screen" ]
	then
		# don't put duplicate lines or lines starting with space in the history.
		# See bash(1) for more options
		HISTCONTROL=ignoreboth

		# append to the history file, don't overwrite it
		shopt -s histappend

		# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
		HISTSIZE=10000
		HISTFILESIZE=20000

		# check the window size after each command and, if necessary,
		# update the values of LINES and COLUMNS.
		shopt -s checkwinsize

		# If set, the pattern "**" used in a pathname expansion context will
		# match all files and zero or more directories and subdirectories.
		#shopt -s globstar

		# make less more friendly for non-text input files, see lesspipe(1)
		[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

		# set variable identifying the chroot you work in (used in the prompt below)
		if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
			debian_chroot=$(cat /etc/debian_chroot)
		fi

		# set a fancy prompt (non-color, unless we know we "want" color)
		case "$TERM" in
			xterm-color) color_prompt=yes;;
		esac

		# uncomment for a colored prompt, if the terminal has the capability; turned
		# off by default to not distract the user: the focus in a terminal window
		# should be on the output of commands, not on the prompt
		#force_color_prompt=yes

		if [ -n "$force_color_prompt" ]; then
			if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
			# We have color support; assume it's compliant with Ecma-48
			# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
			# a case would tend to support setf rather than setaf.)
			color_prompt=yes
			else
			color_prompt=
			fi
		fi

		if [ "$color_prompt" = yes ]; then
			PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
		else
			PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
		fi
		unset color_prompt force_color_prompt

		# If this is an xterm set the title to user@host:dir
		case "$TERM" in
		xterm*|rxvt*)
			PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
			;;
		*)
			;;
		esac

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

		# some more ls aliases
		alias ll='ls -alF'
		alias la='ls -A'
		alias l='ls -CF'

		# Add an "alert" alias for long running commands.  Use like so:
		#   sleep 10; alert
		alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

		# Alias definitions.
		# You may want to put all your additions into a separate file like
		# ~/.bash_aliases, instead of adding them here directly.
		# See /usr/share/doc/bash-doc/examples in the bash-doc package.

		if [ -f ~/.bash_aliases ]; then
			. ~/.bash_aliases
		fi

		# enable programmable completion features (you don't need to enable
		# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
		# sources /etc/bash.bashrc).
		if ! shopt -oq posix; then
			if [ -f /usr/share/bash-completion/bash_completion ]; then
				. /usr/share/bash-completion/bash_completion
			elif [ -f /etc/bash_completion ]; then
				. /etc/bash_completion
			fi
		fi

		if [ -f $HOME/.bash_funcs ]; then
			. $HOME/.bash_funcs
		fi

		### Added by the Heroku Toolbelt
		export PATH="/usr/local/heroku/bin:$PATH"

		#color manpages
		export PAGER="/usr/bin/most -s"

		alias df='df -hT /dev/mmcblk0p1 /dev/mmcblk0p2 /media/webservershares/dandrive /media/webservershares/netdrive'
		alias nodejs='node'
		alias sr='screen -r'
		alias sdms='screen -dmS'
		alias sls='screen -ls'
		alias s='screen'
		alias byobu='byobu-screen'
		alias less='less -r'
		alias nginx='sudo service nginx'
		alias php-fpm='sudo service php5-fpm'
		alias php5-fpm='sudo service php5-fpm'
		alias phpfpm='sudo service php5-fpm'
		alias php5fpm='sudo service php5-fpm'
		alias php='sudo service php5-fpm'
		alias php5='sudo service php5-fpm'
		alias ssh='sudo service openssh'
		alias plex='sudo service plexmediaserver'
		alias calibre='sudo service calibre-server'
		alias calibre-server='sudo service calibre-server'
		alias bubbleupnpserver='sudo service bubbleupnpserver'
		alias bubbleupnp='sudo service bubbleupnpserver'
		alias bubble='sudo service bubbleupnpserver'
		alias genpasswd="strings /dev/urandom | grep -o '[[:graph:]]' | head -n 30 | tr -d '\n'; echo"
		alias get='sudo apt-get install'
		alias nyan='telnet -e ^c nyancat.dakko.us'
		alias reload='. /home/paul/.bashrc'
		alias remove='sudo apt-get --purge remove'
		alias root='sudo -i'
		alias update='sudo apt-get update && sudo apt-get upgrade'
		alias nethack='telnet nethack.alt.org'
		alias apt-get="sudo apt-get"
		## get rid of command not found ##
		alias cd..='cd ..'
		alias ..='cd ..'
		alias ...='cd ../../../'
		alias ....='cd ../../../../'
		alias .....='cd ../../../../'
		alias .4='cd ../../../../'
		alias .5='cd ../../../../..'
		alias mkdir='mkdir -pv'
		alias diff='colordiff'
		alias mount='mount |column -t'
		alias h='history'
		alias j='jobs -l'
		# do not delete / or prompt if deleting more than 3 files at a time #
		alias rm='rm -I --preserve-root'
		# Parenting changing perms on / #
		alias chown='chown --preserve-root'
		alias chmod='chmod --preserve-root'
		alias chgrp='chgrp --preserve-root'
		alias iftop='iftop -i eth0'
		alias meminfo='free -m -l -t'
		alias psmem='ps auxf | sort -nr -k 4'
		alias psmem10='ps auxf | sort -nr -k 4 | head -10'
		alias pscpu='ps auxf | sort -nr -k 3'
		alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
		alias mountall='sudo mount -a'
		alias back='cd "$OLDPWD"'
		alias less='less -FSR'

		keychain

		### npm autocomplete. Why is this not a script? Who knows.
		. <(npm completion)

		# Only load Liquid Prompt in interactive shells, not from a script or from scp
		[[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt
	else
		[ -r /home/efreak/.byobu/prompt ] && . /home/efreak/.byobu/prompt   #byobu-prompt#
fi
