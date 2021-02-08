#!/usr/bin/python3


from guizero import App, Text, PushButton
from subprocess import call

def say_hello():
    call('espeak hello world', shell=True)
    call('espeak hello world', shell=True)

app = App()
text = Text(app)
button = PushButton(app, command=say_hello)
app.display()
