#!/usr/bin/python3
def multiple_returns(sentence):
    f = len(sentence)
    q = sentence[0]
    if not sentence:
        return(0, None)
    return({f}, {q})
