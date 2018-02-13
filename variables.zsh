#! /usr/bin/env zsh

path=("$HOME/.dot/bin" $path)
path=("$HOME/.local/bin" $path)
# path=('/usr/lib/smlnj/bin' $path)

if (( $+commands[emacs] )); then
    export EDITOR='emacsclient -t'
    export ALTERNATE_EDITOR=""
    export SUDO_EDITOR=$EDITOR
    export VISUAL='emacsclient -c'
elif (( $+commands[nvim] )); then
    export EDITOR=nvim
    export SUDO_EDITOR=nvim
elif (( $+commands[vim] )); then
    export EDITOR=vim
    export SUDO_EDITOR=vim
elif (( $+commands[vi] )); then
    export EDITOR=vi
    export SUDO_EDITOR=vi
fi

export QT_QPA_PLATFORMTHEME="qt5ct"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/qutebrowser
