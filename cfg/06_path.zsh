# PATH expansion

. "$HOME/.local/bin/env"
export PATH="$HOME/.aspire/bin:$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH:/home/schnow265/.dotnet/tools"

# pnpm
export PNPM_HOME="/home/schnow265/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
