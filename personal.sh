# locd aliases 
[[ -f ~/alias-personal.sh ]] && . ~/alias-personal.sh
# load custom function
[[ -f ~/function-personal.sh ]] && . ~/function-personal.sh

export EDITOR='nvim'
export VISUAL='nvim'

# 处理 tput: unknown terminal "xterm-256color" 问题，加入以下环境变量
export TERMINFO=/usr/share/terminfo

# colorize man page with bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Fzf config
export FZF_DEFAULT_OPTS="--height 30% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -100'"
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"

#  Couldn't resolve host name (Could not resolve host: crates) 
export CARGO_HTTP_MULTIPLEXING=false
