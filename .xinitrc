#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

eval $(ssh-agent)

session=${1-mate}
case $session in
    mate) exec mate-session;;
    kde) exec startplasma-x11;;
    awesome) exec awesome;;
    i3) exec i3;;
    cinnamon) exec cinnamon-session;;
esac
