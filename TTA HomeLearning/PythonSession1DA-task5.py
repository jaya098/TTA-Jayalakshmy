'''
Write a program which will ask for two numbers from a user. Then
offer a menu to the user giving them a choice of operator:
e.g. – Enter “a” if you want to add
“b” if you want to subtract
Include +, -, /, *, ** square (to the power of). Once the user has
selected which operator they wish to use, perform the calculation.
'''

number_1 = int(input("Enter 1st number: "))
number_2 = int(input("Enter 2nd number: "))
print("Please select one of the below operators:")
print("'a' - Addition\n'b' - Subtraction\n'c' - Division\n'd' - Multiplication")
print("'e' - ** square to the power of")
option = input("Enter your selection: ")
if option == 'a':
    output = number_1 + number_2
    print(f"{number_1} + {number_2} = {output}")
elif option == 'b':
    output = number_1 - number_2
    print(f"{number_1} - {number_2} = {output}")
elif option == 'c':
    output = number_1 * number_2
    print(f"{number_1} * {number_2} = {output}")
elif option == 'd':
    output = number_1 / number_2
    print(f"{number_1} / {number_2} = {output}")
elif option == 'e':
    output = number_1 ** number_2
    print(f"{number_1} ** {number_2} = {output}")
