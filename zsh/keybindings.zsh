# Keybindings

bindkey -e
if [[ "$OS" =~ "darwin" ]]; then
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
elif [[ "$OS" =~ "linux" ]]; then
    # https://superuser.com/a/1296543
    # key dict is defined in /etc/zsh/zshrc
    bindkey "$key[Up]" history-search-backward
    bindkey "$key[Down]" history-search-forward
fi

bindkey '^[w' kill-region

bindkey '^[^[[1;9A' insert-last-word \
        '^[b' insert-last-word
