This simple script uses xdotool to control rdio, running as a chrome app.

It's best used for binding to global hotkeys. For example,
I use `win-p` for play/pause, `win-[` for previous, and `win-]`
for next. And `win-o` to bring the app to front.

Note:
----
This script assumes we're running rdio as a separate chrome app.
It's easier for xdotool to find and interact with the window
in this mode.

To install rdio as an application shortcut go to Tools -> 'Create Application Shortcuts...'
and follow the prompts.

Prequisite:
----------

xdotool

Requires `xdotool`, which is doing all the interesting work: http://www.semicomplete.com/projects/xdotool/
<br/>On github: https://github.com/jordansissel/xdotool
