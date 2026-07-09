#!/usr/bin/python3
def multiple_returns(sentence):
    f = len(sentence)
    q = sentence[0]
    if not sentence:
        return None
    else:
        return(f"Length: {f} - First character : {q}")
