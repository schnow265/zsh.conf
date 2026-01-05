zinit as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' \
    atpull'%atclone' pick"direnv" src"zhook.zsh" for \
        direnv/direnv

zinit as"program" make'install' atclone'make CMAKE_INSTALL_PREFIX=$ZPFX' \
  pick"$ZPFX/bin/nvim" for \
    neovim/neovim

export EDITOR=nvim
