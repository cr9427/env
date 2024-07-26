# Source aliases
#
if [[ -f ${HOME}/.aliases ]]; then
  source ${HOME}/.aliases
fi

# handle eza w/ or w/o git
#
if [[ "${OS}" = "aarch64-unknown-linux-gnu" ]]; then
  alias ll="eza --color=always --long --header --icons=always --smart-group"
  alias la="eza --color=always --long --header --icons=always --smart-group --all"
elif [[ "${OS}" = "armv7l-unknown-linux-gnueabihf" ]]; then
  return 0
else
  alias ll="eza --color=always --long --header --icons=always --smart-group --git --git-repos"
  alias la="eza --color=always --long --header --icons=always --smart-group --all --git --git-repos"
fi
