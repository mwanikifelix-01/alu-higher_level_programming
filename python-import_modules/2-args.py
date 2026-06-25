#!/usr/bin/python3
if __name__ == "__main__":
    import sys
    args = sys.argv[1:]
    count = len(args)

    # Print header based on argument count rules
    if count == 0:
        print("0 arguments.")
    elif count == 1:
        print("1 argument:")
    else:
        print("{} arguments:".format(count))

    for index, arg in enumerate(args, start=1):
        print("{}: {}".format(index, arg))
