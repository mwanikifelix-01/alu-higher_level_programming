#!/usr/bin/python3
import random
number = random.randint(-10000, 1000)
last_digit = number[-1]
if last_digit > 5:
    print(f"Last digit of {number} is {last_digit} and is greater than 5")
elif number[-1] == 0:
    print(f"Last digit of {number} is {last_digit} and is 0")
else:
    print(f"Last digit of {number} is {last_digit} and is less than 6 and not 0")
