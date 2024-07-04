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
else
  alias ll="eza --color=always --long --header --icons=always --smart-group --git --git-repos"
  alias la="eza --color=always --long --header --icons=always --smart-group --all --git --git-repos"
fi

# alias for xca on mac
#
if [[ "${OS}" = "arm-apple-darwin23.5.0" ]]; then
  alias xca="/Applications/xca.app/Contents/MacOS/xca  --database=xca@sql.crylle.local:3307/QMYSQL:xca_ca --sqlpass=file:${HOME}/.config/xca/sql-pwd --password=file:${HOME}/.config/xca/pwd"
fi
