export SVDIR=~/service
export FZF_COMPLETION_TRIGGER="**"
export MANPATH=/opt/julia-1.7.0-rc2/share/man/:$MANPATH
export MANPAGER="manbat"
export BAT_THEME=ansi
export NPM_CONFIG_PREFIX=$HOME/.npm-global/
export EDITOR=nvim
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$HOME/go/bin:$NPM_CONFIG_PREFIX/bin:/opt/VSCode-linux-x64/bin:$PATH"
export XDG_CONFIG_HOME=$HOME/.config/
if [ -f $XDG_CONFIG_HOME/chromium-flags.conf ]; then
   CHROMIUM_FLAGS="$(cat $XDG_CONFIG_HOME/chromium-flags.conf)"
fi
