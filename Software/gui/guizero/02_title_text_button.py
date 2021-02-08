#!/usr/bin/python3


from guizero import App, Text, PushButton

def say_hello():
    text.value = "You clicked me"

app = App()
text = Text(app)
button = PushButton(app, command=say_hello)
app.display()
