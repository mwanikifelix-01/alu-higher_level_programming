#!/usr/bin/python3
def uniq_add(my_list=[]):
    if my_list is None:
        return 0
    uniq = set(my_list)
    b = 0
    for i in uniq:
        b += i
    return b
