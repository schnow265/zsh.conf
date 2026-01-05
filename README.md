# schnow265's zsh config

To install, replace/add this snippet into your `.zshrc`:

```zsh
ZSH_CFG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"
[ ! -d $ZSH_CFG_HOME/.git ] && git clone https://github.com/schnow265/zsh.conf.git "$ZSH_CFG_HOME"
source "${ZSH_CFG_HOME}/config.zsh"
```

## WARNING

This will install **a lot** of stuff. Among them:

- `zinit`
- [my nvim config](https://github.com/schnow265/nvim.conf.git) if you don't have your own.
- the folliowing CLI utils via `zinit as"program"`:
    - nvim
    - fzf
    - btop
    - SDKMAN
    - direnv
    - fizsh
- Shell completions with FZF tab configured
- [My keybinds](./cfg/00_zsh_setup.zsh)
- export `$EDITOR` to be `nvim`+
- my "weird" aliases. [have a look](./cfg/04_aliases.zsh).
- some plugins I find useful.
- my [extremely crappy scripts](./bin/). These are loaded [via shims](./cfg/10_shims.zsh) if there are files in subfolders.
