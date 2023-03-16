#!/usr/bin/python3

import RPi.GPIO as GPIO
import time


# choice of customizing the following to your wiring 
# or to emulate the connectivty indicated below
# this is for common pwm-based motor drivers


ina_2=17
ina_1=27
en_a=22

inb_2=26
inb_1=19
en_b=13


def use_bcm_mode():
    # use bcm numbering as opposed to position number
    GPIO.setmode(GPIO.BCM)

def setup_gpios():
    # set a motors
    GPIO.setup(ina_2, GPIO.OUT)
    GPIO.setup(ina_1, GPIO.OUT)
    GPIO.setup(en_a, GPIO.OUT)

    # set b motors
    GPIO.setup(inb_2, GPIO.OUT)
    GPIO.setup(inb_1, GPIO.OUT)
    GPIO.setup(en_b, GPIO.OUT)

def engage_pwm_at_duty_cycle(pwm, duty_cycle, duration):
    pwm.start(duty_cycle)
    time.sleep(duration)
    pwm.stop()



def forward_mode():
    GPIO.output(ina_2, False)
    GPIO.output(ina_1, True)

    GPIO.output(inb_2, True)
    GPIO.output(inb_1, False)


def reverse_mode():
    GPIO.output(ina_2, True)
    GPIO.output(ina_1, False)

    GPIO.output(inb_2, False)
    GPIO.output(inb_1, True)

def a_only():
    GPIO.output(ina_2, True)
    GPIO.output(ina_1, False)

    GPIO.output(inb_2, False)
    GPIO.output(inb_1, False)

def b_only():
    GPIO.output(ina_2, False)
    GPIO.output(ina_1, False)

    GPIO.output(inb_1, True)
    GPIO.output(inb_2, False)


def take_a_step():

    pwm_a = GPIO.PWM(en_a, 1000)
    pwm_b = GPIO.PWM(en_b, 1000)

    pwm_a.start(80)
    pwm_b.start(80)

    time.sleep(0.8)

    pwm_a.stop()
    pwm_b.stop()


def main():
    use_bcm_mode()
    setup_gpios()

    forward_mode()
    take_a_step()
    time.sleep(1)

    reverse_mode()
    take_a_step()



if __name__=="__main__":
    main()
