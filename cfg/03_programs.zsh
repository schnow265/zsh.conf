zinit as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' pick"direnv" src"zhook.zsh" for \
    direnv/direnv

zinit as"program" make'install' atclone'make CMAKE_INSTALL_PREFIX=$ZPFX CMAKE_BUILD_TYPE=RelWithDebInfo' atpull'%atclone' pick"$ZPFX/bin/nvim" for \
    neovim/neovim

zinit as"program" cmake'--install build' atclone'cmake -B build -G Ninja && cmake --build build' atpull'%atclone' pick"$ZPFX/bin/btop" for \
    aristocratos/btop

zinit as"program" make'install' atclone'./configure --prefix=$ZPFX' atpull'%atclone' pick"$ZPFX/bin/fizsh" for \
    zsh-users/fizsh

zinit ice as"program" pick"$ZPFX/sdkman/bin/sdk" id-as'sdkman' run-atpull \
    atclone"wget 'https://get.sdkman.io/?rcupdate=false' -O scr.sh; SDKMAN_DIR=$ZPFX/sdkman bash scr.sh" \
    atpull"SDKMAN_DIR=$ZPFX/sdkman sdk selfupdate" \
    atinit"export SDKMAN_DIR=$ZPFX/sdkman; source $ZPFX/sdkman/bin/sdkman-init.sh"
zinit light zdharma-continuum/null

zinit as"program" from"gh-r" for @astral-sh/uv
