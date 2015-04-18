unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix
bindkey '5D' emacs-backward-word
bindkey '5C' emacs-forward-word
