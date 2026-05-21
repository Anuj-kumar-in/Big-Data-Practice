import sys

for line in sys.stdin:
    line = line.strip("\n\r")  #Converting into plain string
    quantity =int(line)
    quantity *=10
    print(str(quantity))