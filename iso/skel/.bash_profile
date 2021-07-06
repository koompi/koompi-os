#
# ~/.bash_profile
#

[[ -f /usr/share/bash-completion/bash_completion ]] && source /usr/share/bash-completion/bash_completion
[[ -f ~/.bashrc ]] && source ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Nodejs path
export PATH="$HOME/.node_modules/bin:$PATH/"
export npm_config_prefix="$HOME/.node_modules"

# Rust lang path
export PATH="$HOME/.cargo/bin:$PATH"

# Default editor
export VISUAL=nano
export EDITOR=nano

# Fcitx input system support
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export SDL_IM_MODULE=fcitx
