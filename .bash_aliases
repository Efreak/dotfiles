# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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
alias mount='acoc colmount'
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
alias du='cdu -d'
alias df="dfc -t vfat,ext4,ext3,ntfs -WT && dfc -c always -fWT|grep -E 'drive$'|head -n 2"
