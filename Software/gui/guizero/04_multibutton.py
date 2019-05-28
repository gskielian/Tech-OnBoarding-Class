#!/usr/bin/python3


from guizero import App, Text, PushButton
from subprocess import call

def say_hello():
    call('espeak hello world', shell=True)

def say_goodbye():
    call('espeak hello world', shell=True)

app = App()
text = Text(app)
button1 = PushButton(app, command=say_hello)
button1.text = "Say Hello"
button2 = PushButton(app, command=say_goodbye)
button2.text = "Say Goodbye"
app.display()
