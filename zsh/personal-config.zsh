# colorize man page
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# use vi mode commandline
#set -o vi

# pnpm
export PNPM_HOME="/home/vuwfxr/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

[[ ! -f ~/dotfiles/zsh/alias-personal.sh ]] || source ~/dotfiles/zsh/alias-personal.sh

[[ ! -f ~/dotfiles/zsh/function-personal.sh ]] || source ~/dotfiles/zsh/function-personal.sh

