#!/usr/bin/python3
def roman_to_int(roman_string):
    if roman_string is None or isinstance(roman_string, str):
        return 0

    roman_val = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 5000
    }

    total = 0
    length = len(roman_sring)

    for i in range(length):
        current value = roman_val.get(roman_string[i], 0)
        next_value = 0
        if i + 1 < length:
            next_value = roman_val.get(roman_string[i + 1], 0):

        if current_value < next_value:
            total -= current_val
        else:
            total += current_val

    return total
