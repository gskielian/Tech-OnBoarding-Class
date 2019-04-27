# Windows Manager

StumpWM is a windows manager which is very customizable and really helps speed things up (much less mouse clicking).

Sharing some settings which could help others get started.


# File Descriptions

`stumpwmrc` -- copy this to `~/.stumpwmrc` it has sensible keybindings and example of browser + terminal default setting
`stump_desk` -- copy this to `~/.stump_desk` and overwrite as described in the ~/.stumpwmrc file, keeps memory of physical layout of things
`stump_window` -- copy this to `~/.stump_window` and overwrite as described in the ~/.stumpwmrc file, keeps record of where your windows (e.g. browser and terminal) were placed


# Key bindings

Movements commonly used:

`C-t C-o` -- cycle through frames -- if only 2 or 3 applications open, this is great for navigation
`C-t C-f C-h` -- you can alter the keybinding, essentially moves in direction of hjkl bindings (in this case `h` for left)
`C-t ;` -- enter a command -- such as `loadrc` or `quit` or `reload`
`C-t f` -- for lots of windows, numbers appear and you can select them by number
`C-t k` -- kills a frame
`C-t R` -- removes a split from a frame
`C-t S` -- splits vertically
`C-t s` -- splits horizontally
