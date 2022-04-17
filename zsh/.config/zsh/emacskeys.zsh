# Ensure emacs mode
bindkey -e

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab

# fix ctrl + right/left
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# allow up and down keys to be used when searching (ctrl + r)
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Fix ctrl+backspace to kill a word backwards
bindkey '^H' backward-kill-word
