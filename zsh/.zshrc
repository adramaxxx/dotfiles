if ! exa -v &> /dev/null
then
	alias ls="ls --color-always=true "
else
	alias ls="exa"
fi

if ! bat -v &> /dev/null
then
	alias cat="bat"
else 
	alias cat="cat"
fi

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export TERM=xterm-256color


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

## Keybindings mode
source ~/.config/zsh/emacskeys.zsh


# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


### Aliases section
alias size-scan='du -sh * | grep -v "/$" | sort -rh'
alias dragdrop="dragon-drag-and-drop"
alias vidtoaudio="youtube-dl -x --extract-audio --audio-format flac --audio-quality 0"
export CACUS="cacus.feralhosting.com"
alias weather="curl wttr.in"
alias editvim="nvim ~/.config/nvim/init.vim"
alias diredu="cd ~/Documents/education/dat6/"

alias rp="cd ~/Documents/repos/p6rapport"

## git aliases
alias gs="git status"
alias ga="git add"
alias gm="git commit"
alias gp="git push"
### 

# If ssh using kitty terminal
if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# Change default manpage reader to bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Use zsh_history file for autosuggestions, and persists these between shell sessions
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory

### FZF releated stuff
export FZF_DEFAULT_OPTS='
	--color dark
'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
### 

### prompt 
source $HOME/.config/zsh/zsh-prompt
###

source ~/.config/privatealias

### Zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
### 
