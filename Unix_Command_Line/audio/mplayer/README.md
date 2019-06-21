# MPlayer

great command line util for playing movies and video

# Usage

`mplayer <name-of-file>`

for example

`mplayer lose_yourself_to_dance.m4a`

If you wanted to play all the m4a files in one directory, cd into the directory and do:

`mplayer *.m4a`


# More Usage

below guide is excerpted from the mplayer man, great documentation for usage : )

```
INTERACTIVE CONTROL
       MPlayer has a fully configurable, command-driven  control  layer  which
       allows you to control MPlayer using keyboard, mouse, joystick or remote
       control (with LIRC).  See the -input option for ways to customize it.

       keyboard control
              LEFT and RIGHT
                   Seek backward/forward 10 seconds.
              UP and DOWN
                   Seek forward/backward 1 minute.
              PGUP and PGDWN
                   Seek forward/backward 10 minutes.
              [ and ]
                   Decrease/increase current playback speed by 10%.
              { and }
                   Halve/double current playback speed.
              BACKSPACE
                   Reset playback speed to normal.
              < and >
                   Go backward/forward in the playlist.
              ENTER
                   Go forward in the playlist, even over the end.
              HOME and END
                   next/previous playtree entry in the parent list
              INS and DEL (ASX playlist only)
                   next/previous alternative source.
              p / SPACE
                   Pause (pressing again unpauses).
              .
                   Step forward.  Pressing once will pause movie,  every  con‐
                   secutive  press  will play one frame and then go into pause
                   mode again (any other key unpauses).
              q / ESC
                   Stop playing and quit.
              U
                   Stop playing (and quit if -idle is not used).
              + and -
                   Adjust audio delay by +/- 0.1 seconds.
              / and *
                   Decrease/increase volume.
              9 and 0
                   Decrease/increase volume.
              ( and )
                   Adjust audio balance in favor of left/right channel.
              m
                   Mute sound.
              _ (MPEG-TS, AVI and libavformat only)
                   Cycle through the available video tracks.
              # (DVD, Blu-ray, MPEG, Matroska, AVI and libavformat only)
                   Cycle through the available audio tracks.


AUTHORS
       MPlayer  was initially written by Arpad Gereoffy.  See the AUTHORS file
       for a list of some of the many other contributors.

       MPlayer is (C) 2000-2016 The MPlayer Team

       This man page was written mainly by Gabucino, Jonas Jermann  and  Diego
       Biurrun.   It  is maintained by Diego Biurrun.  Please send mails about
       it to the MPlayer-DOCS mailing list.  Translation specific mails belong
       on the MPlayer-translations mailing list.

The MPlayer Project               2015-02-13                        MPlayer(1)

```
