#!/usr/bin/python3


from guizero import App, Text, PushButton
from subprocess import call
import random

def generate_random_number():
    random_number.value = random.randint(1,101)

app = App()
text = Text(app)
button1 = PushButton(app, command=generate_random_number)
button1.text = "Push Me to Make a Random Number"
random_number = Text(app, "random number")
app.display()
