#!/usr/bin/python3
def best_score(a_dictionary):
    if not a_dictionary:
        return None

    for key, value in a_dictionary.items():
        big = value[0]
        if value > big:
            return key
