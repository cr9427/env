# Set the directory we want to store zinit and plugins
#
export ZINIT[BIN_DIR]=${HOME}/run/share/zinit/zinit.git

# Download Zinit, if it's not there yet
#
if [ ! -d "$ZINIT[BIN_DIR]" ]; then
   mkdir -p "$(dirname $ZINIT[BIN_DIR])"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT[BIN_DIR]"
fi

# Source/Load zinit
#
source "${ZINIT[BIN_DIR]}/zinit.zsh"
