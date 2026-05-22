import sys

for line in sys.stdin:
    line = line.strip("\n\r")  #Converting into plain string
    num1 , num2 ,str1= line.split("\t")
    num1 = int(num1)
    num2 = int(num2)
    num2 *= num2
    result = '\t'.join([str(num1) ,str( num2) ,str1])
    print(result)