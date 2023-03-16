# Command list:


## downloading and installing tmux on debian-based linux:

`sudo apt-get install tmux`

## creating a new session

`tmux new -s <name-of-session>`

## detaching from session

when tmux is open, type:

`c-b d`

to detach from the session and leave tmux

## resuming a previous session

`tmux attach -t <name-of-session>`

## in tmux commands

## session

`c-b d` detach from session

`c-b c` create a new window

`c-b p` go to next window in session

`c-b p` go to previous window in session

`c-b ,` rename current window

`c-b d` detach from current session (can come back later)


## creating subpanels

subpanels divide windows, are very useful and look very cool

`c-b "` create horizontal split 
`c-b %` create vertical split
`c-b ;` go to last pane
`c-b o` go to next pane
`c-b <direction` switch to sub-panel in `<direction>`
`c-d` close panel
`c-b z` full screen or un-full screen current subpanel

## Session Naming

`c-b $` rename current session
`tmux new -S <session-name>` create new session of name `<session-name>`


## Layout actions

`c-b space` switch to next layout (e.g. horizontal <-> vertical of panes)
