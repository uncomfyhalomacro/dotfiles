export SVDIR=~/service
export FZF_COMPLETION_TRIGGER="**"
export APPS=$HOME/.apps 
export APPS_BIN=$APPS/bin
export APPS_MAN=$APPS/man
export MANPATH=$APPS_MAN:$MANPATH
export MANPAGER="manbat"
export BAT_THEME=ansi
export NPM_CONFIG_PREFIX=$HOME/.npm-global/
export EDITOR=nvim
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export FOOT_SOCK="${XDG_RUNTIME_DIR}/foot-${WAYLAND_DISPLAY}.sock"
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$HOME/go/bin:$NPM_CONFIG_PREFIX/bin:$APPS_BIN:$PATH"
export XDG_CONFIG_HOME=$HOME/.config/
if [ -f $XDG_CONFIG_HOME/chromium-flags.conf ]; then
   CHROMIUM_FLAGS="$(cat $XDG_CONFIG_HOME/chromium-flags.conf)"
fi


