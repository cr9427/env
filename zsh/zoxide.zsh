# Environment variables:
#   _ZO_DATA_DIR         Path for zoxide data files
#   _ZO_ECHO             Print the matched directory before navigating to it when set to 1
#   _ZO_EXCLUDE_DIRS     List of directory globs to be excluded
#   _ZO_FZF_OPTS         Custom flags to pass to fzf
#   _ZO_MAXAGE           Maximum total age after which entries start getting deleted
#   _ZO_RESOLVE_SYMLINKS Resolve symlinks when storing paths
export _ZO_DATA_DIR="$HOME/.cache/zoxide.`hostname -s`"

#[[ -f $HOME/.local/bin/zoxide ]] || curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

eval "$(zoxide init --cmd cd zsh)"
