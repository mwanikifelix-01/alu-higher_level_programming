#!/usr/bin/python3
def print_sorted_dictionary(a_dictionary):
    sorts = sorted(a_dictionary.keys())
    for key in sorts:
        print("{}: {}".format(key, a_dictionary[key]))
