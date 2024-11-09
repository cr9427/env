# Set the directory we want to store zinit and plugins
#
export ZINIT[BIN_DIR]=${HOME}/run/share/zinit/zinit.git

# Download Zinit, if it's not there yet
#
if [ ! -d "$ZINIT_BIN" ]; then
   mkdir -p "$(dirname $ZINIT_BIN)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_BIN"
fi

# Source/Load zinit
#
source "${ZINIT_BIN}/zinit.zsh"
