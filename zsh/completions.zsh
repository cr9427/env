# if we are on Ubuntu with zsh installed
if [ -d  /usr/share/zsh/vendor-completions ]; then
  fpath=(/usr/share/zsh/vendor-completions $fpath)
fi

# if zsh-completions ist installed with brew
if [ -d $HOMEBREW_PREFIX/share/zsh-completions ]; then
  fpath=($HOMEBREW_PREFIX/share/zsh-completions $fpath)
fi

# Completion styling
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z} l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
