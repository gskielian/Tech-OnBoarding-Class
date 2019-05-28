#!/usr/bin/python3


from guizero import App, Text, PushButton
from subprocess import call

def push_me():
    call('xdg-open https://www.youtube.com/watch?v=oHg5SJYRHA0', shell=True)

app = App()
text = Text(app)
button1 = PushButton(app, command=push_me)
button1.text = "Push Me : D"
app.display()
