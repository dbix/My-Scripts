import re

"""
3 {  50 hours of homework  }
4 {  50 more hours of homework  }
5 {  9001 hours of homework }
"""

TODO_PATT = re.compile(
    "[0-9]+\s\{\s{2}[A-Za-z.,"
    "/?*&^%$#@!~`\s]*\s{2}\}"
)

# I will always store the file here
PATH = "/Users/dbixler/.todo"


def remove_line(lineno):
    """
    This removes lines from a very
    specifics file. It's my storage
    file that I use for my command
    line to-do list program.
    :param lineno:
    :return:
    """
    file = open(PATH, "r")
    lines = file.readlines()
    l = 1
    file.close()
    file = None
    file = open(PATH, "w")
    for line in lines:
        """
        Check if each line is a valid 
        line and also not the one 
        we're supposed to be removing 
        before we put it back
        """
        if l != lineno:
            if TODO_PATT.match(line):
                s = str(l) + line[1:]
                file.write(s)
        else:
            line = None
    file.close()
    return

def main():
    line = sys.argv[1]
    remove_line(line)

if __name__=="__main__": 
    main()
