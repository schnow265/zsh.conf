# Base Directory

CFG_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}"

[ ! -d $CFG_DIR/nvim ] && git clone https://github.com/schnow265/nvim.conf.git "$CFG_DIR/nvim"
