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
HISTSIZE=5000
SAVEHIST=10000
setopt appendhistory autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install

source $HOME/.antigen/antigen-repo/antigen.zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle nojhan/liquidprompt
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle heroku
antigen bundle djui/alias-tips
#antigen bundle chrissicool/zsh-256color
#antigen bundle chrissicool/zsh-bash
#antigen bundle joel-porquet/zsh-dircolors-solarized.git
#antigen use prezto

