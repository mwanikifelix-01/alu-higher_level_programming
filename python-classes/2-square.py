#!/usr/bin/python3
"""This module sets square"""


class Square:
    """A class function that defines functions"""
    def __init__(self, size=0):
        """checks size if it is an integer"""
        if type(size) is not int:
            raise TypeError("size must be an integer")
        if size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size
