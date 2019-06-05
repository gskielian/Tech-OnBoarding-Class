# basic vim commands

# cancel command/panic button


`[ESC]` will cancel

# moving forward/backwards

`j` move down one
`k` move up one
`h` move left one
`l` move right one


`C-f` move forward 1 page

`C-b` move backwards 1 page


`C-y` move backwards 1 line

`C-e` move forward 1 line


`w` move forward 1 word

`b` move backwards 1 word


`0` move to start of line
`_` move to first non-blank character

`$` move to end of line



# searching


`/` search forwards from current cursor location

`?` search reverse from cursor location

# moving between files


`:edit ` open/create file

`q` close current buffer

`:bn` move to next buffer

# killing (akin to 'cut' of 'cut'-and-paste)


`d$` kill till end of line (replace current cut buffer)

`d0` kill till beginning of line (replace current cut buffer)


# cut and paste to registers

`'yd$` kill till end of line, and store in buffer `y` (replace y with character of choice)

`'yp` paste from register y

# copy


`y + region` select a region then press `y`

# copy to register

`'ay` select region then copy to the `a` register, replace `a` with letter of choice

# pasting

`p` pastes at current location of cursor (after cursor)
`P` pastes at current location of cursor (before cursor)

`'ap` pastes contents of register `a` after cursor

# highlighting


`v` and moving the cursor to create a region
`shift-v` move cursor to create region (highlights whole lines)

# insert mode special moves

`c-w` delete last word
`c-o` do one action in normal mode, then pop back into insert mode
`c-r` insert from a specific register (`"` is your default, `+` is system clipboard)

# quitting

`:wq` save and quit (aka write and quit)

`:q!` quit, do not save changes


