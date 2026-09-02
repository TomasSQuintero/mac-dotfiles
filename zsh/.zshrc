# Set colors: folders cyan, files white
# export LS_COLORS='di=36:fi=0:ln=0:pi=0:so=0:do=0:bd=0:cd=0:or=0:mi=0:su=0:sg=0:tw=0:ow=0:st=0:ex=0'
export LS_COLORS='di=96:fi=97'
setopt HIST_IGNORE_DUPS
alias ls='ls --color=auto'
#PROMPT='tom@mac %~ %# '
PROMPT='%~ > '

alias dl='yt-dlp -f "bv*+ba/b" --merge-output-format mp4 -P ~/Downloads'

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

alias n='nvim'

# fzf
# ------------------------------------
source <(fzf --zsh)

eval "$(zoxide init --cmd cd zsh)"

# yazi
# ------------------------------------
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

syncnotes() {
    git add .
    git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"
    git push
}

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
