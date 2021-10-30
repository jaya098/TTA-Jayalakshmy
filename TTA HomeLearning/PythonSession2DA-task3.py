"""
 Write a program which will ask for two numbers
from a user. Then offer an option menu to the user
giving them a choice of maths operators. Once the
user has selected which operator they wish to use,
perform the calculation by using a procedure and
passing parameters.
"""


def addition(a, b):
    output = a + b
    print(f"{a} + {b} = {output}")


def subtraction(a, b):
    output = a - b
    print(f"{a} - {b} = {output}")


def multiplication(a, b):
    output = a * b
    print(f"{a} * {b} = {output}")


def division(a, b):
    output = a / b
    print(f"{a} / {b} = {output}")


def square_root(a, b):
    output = a ** b
    print(f"{a} ** {b} = {output}")


number_1 = int(input("Enter 1st number: "))
number_2 = int(input("Enter 2nd number: "))
print("Please select one of the below operators:")
print("'a' - Addition\n'b' - Subtraction\n'c' - Division\n'd' - Multiplication")
print("'e' - ** square to the power of")
option = input("Enter your selection: ")
if option == 'a':
    addition(number_1, number_2)

elif option == 'b':
    subtraction(number_1, number_2)
elif option == 'c':
    division(number_1, number_2)
elif option == 'd':
    multiplication(number_1, number_2)
elif option == 'e':
    square_root(number_1, number_2)
