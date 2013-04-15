#!/bin/sh

# This simple script uses xdotool to control the rdio app.
# It's best used for binding to global hotkeys. For example,
# I use win-p for play/pause, win-[ for previous, and win-]
# for next.
#
# Note: this assumes we're running rdio as a separate chrome app.
# It's easier for xdotool to find and interact with the window
# in this mode.

XDOTOOL_SEARCH="xdotool search --classname www.rdio.com"

if [ "$1" = "playpause" ]; then
  $XDOTOOL_SEARCH key --clearmodifiers space
elif [ "$1" = "next" ]; then
  $XDOTOOL_SEARCH key --clearmodifiers bracketright
elif [ "$1" = "previous" ]; then
  $XDOTOOL_SEARCH key --clearmodifiers bracketleft
elif [ "$1" = "activate" ]; then
  $XDOTOOL_SEARCH windowactivate
else
  echo "Usage: $0 playpause|next|previous|activate"
  exit 1
fi
