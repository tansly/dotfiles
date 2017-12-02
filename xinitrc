xset +fp /usr/share/fonts/terminus
xrdb ~/.Xresources
play -n -c2 synth sin gain -100 2>/dev/null & # workaround for delayed play problem
exec xfce4-session
