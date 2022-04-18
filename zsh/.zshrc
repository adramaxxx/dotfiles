## Note to self, wsl does not like the dev/null checks
## autoload colors
autoload -Uz vcs_info
autoload -U colors && colors

export MANPATH="/usr/local/man:$MANPATH"
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

## Prompt
# Prompt. Using single quotes around the PROMPT is very important, otherwise
# the git branch will always be empty. Using single quotes delays the
# evaluation of the prompt. Also PROMPT is an alias to PS1.
git_prompt() {
    local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3)"
    local branch_truncated="${branch:0:30}"
    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo " (${branch})"
}
setopt PROMPT_SUBST

PROMPT='%B%{$fg[green]%}%n@%{$fg[green]%}%M %{$fg[blue]%}%~%{$fg[yellow]%}$(git_prompt)%{$reset_color%} %(?.$.%{$fg[red]%}$)%b '

# Completoin settings
autoload -U compinit
compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

zstyle ':completion:*' menu select=2
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true


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


alias ls="ls --color=auto "
alias cat="bat"


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

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Use zsh_history file for autosuggestions, and persists these between shell sessions
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory

### FZF releated stuff
export FZF_DEFAULT_COMMAND="rg --files --hiden --follow --glob '!.git'"
export FZF_DEFAULT_OPTS='
	--color dark
'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
### 

#source ~/.config/privatealias

### Zsh plugins
## Modified paths to fit ubuntu's place of placing these files
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
### 
