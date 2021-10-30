import random

random_number = random.randint(1, 100)
user_name = input("Please enter your name: ")
user_number = int(input("Please enter a random number between 1 and 100: "))
user_name = user_name.capitalize()
if random_number == user_number:
    print("WOW! " + user_name + " Your guess is correct")
else:
    print("Its not correct. " + user_name + "! Better luck next time.")
