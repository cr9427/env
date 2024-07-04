# Keybindings
bindkey -e
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey '^[w' kill-region

bindkey '^[^[[1;9A' insert-last-word \
        '^[b' insert-last-word

# OS=$(uname -s)
# if [ "$OS" = "Darwin" ]; then
#     bindkey '^[[A' history-substring-search-up
#     bindkey '^[[B' history-substring-search-down
# elif [ "$OS" = "Linux" ]; then
#     # https://superuser.com/a/1296543
#     # key dict is defined in /etc/zsh/zshrc
#     bindkey "$key[Up]" history-substring-search-up
#     bindkey "$key[Down]" history-substring-search-down
# fi
