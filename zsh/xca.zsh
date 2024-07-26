# alias for xca on mac
#
if [[ "${OS}" = "arm-apple-darwin23.5.0" ]]; then
  alias xca="/Applications/xca.app/Contents/MacOS/xca  --database=xca@sql.crylle.local:3306/QMYSQL:xca_prod --sqlpass=file:${HOME}/.config/xca/sql-pwd --password=file:${HOME}/.config/xca/pwd"
#  alias xca="/Applications/xca.app/Contents/MacOS/xca  --database=xca@sql.crylle.local:3306/QODBC:xca_prod --sqlpass=file:${HOME}/.config/xca/sql-pwd --password=file:${HOME}/.config/xca/pwd"
fi

# see https://man.uex.se/1/xca
#
#export QMYSQL_OPTIONS="requiressl=1"
#export QODBC_OPTIONS="requiressl=1"
#export DYLD_LIBRARY_PATH=/opt/homebrew/lib
