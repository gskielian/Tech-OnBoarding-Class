#!/bin/bash


# height and width for your dialog box
height=10
width=40

result=$(dialog --stdout --title "Hello Dialog" --clear --inputbox "Hello : D, what is your name" $height $width)
return_value=$?


# 0 is for "ok", "1" is "cancel"
case $return_value in
	0)
		echo "your name is $result"
		;;
	1)
		echo "you pressed cancel"
		;;
esac
