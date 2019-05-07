#!/usr/bin/env bash

#  ┏━╸┏┳┓
#  ┣╸ ┃┃┃
#  ╹  ╹ ╹

export FIFO_UEBERZUG="/tmp/vifm-ueberzug-${PPID}"

function cleanup() {
  rm "$FIFO_UEBERZUG" 2>/dev/null
  pkill -P $$ 2>/dev/null
}

pkill -P $$ 2>/dev/null
rm "$FIFO_UEBERZUG" 2>/dev/null
mkfifo "$FIFO_UEBERZUG" >/dev/null

trap cleanup EXIT 2>/dev/null
tail --follow "$FIFO_UEBERZUG" | ueberzug layer --silent --parser bash 2>&1 >/dev/null &

vifm
cleanup
