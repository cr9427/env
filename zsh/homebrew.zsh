# Source brew
#
if [[ -x /opt/homebrew/bin/brew ]]; then
  BREW_LOCATION="/opt/homebrew/bin/brew"
elif [[ -x /usr/local/bin/brew ]]; then
  BREW_LOCATION="/usr/local/bin/brew"
elif [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  BREW_LOCATION="/home/linuxbrew/.linuxbrew/bin/brew"
elif [[ -x "${HOME}/.linuxbrew/bin/brew" ]]; then
  BREW_LOCATION="${HOME}/.linuxbrew/bin/brew"
else
  return
fi

eval "$("${BREW_LOCATION}" shellenv)"
unset BREW_LOCATION

# add completions
#
if [[ -d "${HOMEBREW_PREFIX}/share/zsh/site-functions" ]]; then
  fpath+=("${HOMEBREW_PREFIX}/share/zsh/site-functions")
fi

# Tell homebrew to not autoupdate every single time I run it (just once a week).
#
export HOMEBREW_AUTO_UPDATE_SECS=604800
