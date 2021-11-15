export HOME="/home/uncomfy"
export FZF_COMPLETION_TRIGGER="**"
export APP_PATH="$HOME/.apps/"
export MANPATH="$APP_PATH/man:$HOME/.local/share/man:/usr/local/share/man:/usr/share/man:"
export MANPAGER="bat -l man -p"
export BAT_THEME="ansi"
export NPM_CONFIG_PREFIX="$HOME/.npm-global/"
PATH="/usr/sbin:/sbin:/bin:/usr/bin:/usr/local/bin:"
export PATH="$APP_PATH/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/go/bin:$NPM_CONFIG_PREFIX/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="nvim"
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
if [ ! -S ${SSH_AUTH_SOCK} ]; then
    eval $(ssh-agent -a ${SSH_AUTH_SOCK} 2> /dev/null)
fi
