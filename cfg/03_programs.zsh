zinit as"program" from"gh-r" for kitware/cmake

zinit as"program" from"gh-r" for ccache/ccache

zinit as"program" make'install' atclone'make CMAKE_INSTALL_PREFIX=$ZPFX CMAKE_BUILD_TYPE=RelWithDebInfo' atpull'%atclone' pick"$ZPFX/bin/nvim" for \
    neovim/neovim

zinit as"program" cmake'--install build' atclone'cmake -B build -G Ninja && cmake --build build' atpull'%atclone' pick"$ZPFX/bin/btop" for \
    aristocratos/btop

zinit as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' pick"direnv" src"zhook.zsh" for \
    direnv/direnv

zinit as"program" make'install' atclone'./configure --prefix=$ZPFX' atpull'%atclone' pick"$ZPFX/bin/fizsh" for \
    zsh-users/fizsh

zinit as"program" from"gh-r" for @astral-sh/uv
zinit as"program" from"gh-r" for neovide/neovide
