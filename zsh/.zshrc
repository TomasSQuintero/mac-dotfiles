export LS_COLORS='di=96:fi=97'
alias ls='ls --color=auto'
#PROMPT='tom@mac %~ %# '
PROMPT='%~ > '

#compinit re-checks all completion files every shell start, which gets slow. Cache it
autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

alias n='nvim'

#history settings
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE      # commands starting with space aren't saved
setopt SHARE_HISTORY          # share history across sessions
setopt HIST_EXPIRE_DUPS_FIRST
setopt APPEND_HISTORY

# auto cd, no hace falta hacer cd, solo basta con el nombre del directorio
setopt AUTO_CD

# setopt CORRECT
setopt EXTENDED_GLOB
zstyle ':completion:*' menu select
setopt GLOB_DOTS

# vim mode
bindkey -v
export KEYTIMEOUT=1   # reduces lag when switching modes (in ms*10)

# fzf
source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# git add, commit with date-time as message and push
syncnotes() {
    git add .
    git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"
    git push
}

# git add, commit with custom message and push
gacp() {
    if [ -z "$1" ]; then
        echo "❌ Commit message required."
        echo "Usage: gacp \"your commit message\""
        return 1
    fi

    git add .
    git commit -m "$1"
    git push
}

compare() {
    if [ "$#" -ne 2 ]; then
        echo "Uso: compare archivo1 archivo2"
        return 1
    fi
    
    diff -u "$1" "$2" | bat -l diff
}

export PATH="/opt/homebrew/bin:$PATH"

fdiff() {
    git diff --no-index --color=always -- "$1" "$2" | delta -R
}

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
