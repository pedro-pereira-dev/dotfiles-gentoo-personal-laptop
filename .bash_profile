# always load bashrc in interactive shells and starts X server
if shopt -q login_shell; then
    [[ -f ~/.bashrc ]] && source ~/.bashrc
    [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && exec startx
else
    exit 1 # Somehow this is a non-bash or non-login shell.
fi
