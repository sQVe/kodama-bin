#!/usr/bin/env bash

#  ╻  ┏━┓┏━╸┏━┓╺┳╸╻┏━┓┏┓╻
#  ┃  ┃ ┃┃  ┣━┫ ┃ ┃┃ ┃┃┗┫
#  ┗━╸┗━┛┗━╸╹ ╹ ╹ ╹┗━┛╹ ╹

case "$1" in
  home)
    xrandr --output DP-1-2 --off --output DP-1-3 --off
    sleep 3
    xrandr --output eDP-1 --mode 1920x1080 --pos 4000x740 --rotate normal \
      --output DP-1-2 --mode 2560x1440 --pos 0x0 --rotate left \
      --output DP-1-3 --primary --mode 2560x1440 --pos 1440x560 --rotate normal

    random-wallpaper
    ;;
esac
