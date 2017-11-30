#!/bin/bash

# Keyboard
/usr/bin/setxkbmap ca

# Display
NR_OF_MONITORS=$(/usr/bin/xrandr -q | /bin/grep " connected [0-9]\+x[0-9]\+" | /usr/bin/wc -l)
if [[ $NR_OF_MONITORS -gt 1 ]]; then
    echo 'Multiple monitors!'
    # Looks like it require a --auto first
    xrandr --auto
    sleep 5
    xrandr --output eDP1 --off \
           --output DP1-8 --mode 1920x1080 \
           --output DP1-1-8 --mode 1920x1080 --right-of DP1-8 \
           --output DP1-1-1-8 --mode 1920x1080 --right-of DP1-1-8
else
    echo 'Single monitor'
    xrandr --output eDP1 --mode 1920x1080
fi

# Screensaver
/usr/bin/xautolock -time 10 -locker ~/.lock.sh -detectsleep &

# Sound
/usr/bin/pulseaudio --start

# Transparency
/usr/bin/xcompmgr -f -c -s &

# mpd
[ ! -s ~/.config/mpd/pid ] && /usr/bin/mpd

# Applications
/usr/bin/shutter --min_at_startup &

# Disable touchpad while typing
/usr/bin/syndaemon -i 0.3 -d

# Java look and feel
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djava.net.preferIPv4Stack=true'

# SSH keys
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
eval $(ssh-agent)

exec awesome > /home/mdube/.config/awesome/awesome.log
