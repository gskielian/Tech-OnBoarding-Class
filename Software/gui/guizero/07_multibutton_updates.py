#!/usr/bin/python3

from guizero import App, Text, PushButton
from subprocess import call
import random

def button1_action():
    random_number_1.value = random.randint(1,101)
def button2_action():
    random_number_2.value = random.randint(1,101)
def button3_action():
    random_number_3.value = random.randint(1,101)

app = App()
text = Text(app)

button1 = PushButton(app, command=button1_action)
button1.text = "Push Me to Make a Random Number"
random_number_1 = Text(app, "random number")

button2 = PushButton(app, command=button2_action)
button2.text = "Push Me to Make a Random Number"
random_number_2 = Text(app, "random number")

button3 = PushButton(app, command=button3_action)
button3.text = "Push Me to Make a Random Number"
random_number_3 = Text(app, "random number")

app.display()
