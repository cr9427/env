# History
export HISTSIZE=5000
export HISTFILE=$HOME/.cache/zhistory.${HOST}
export SAVEHIST=$HISTSIZE
export HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_verify

export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=#d33682,fg=#002b36,bold'
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=#dc322f,fg=#002b36,bold'
