# Incorporate the random library
import random

# Print Title
print("Let's Play Rock Paper Scissors!")

# Specify the three options
options = ["r", "p", "s"]

# Computer Selection
computer_choice = random.choice(options)

# User Selection
user_choice = input("Make your Choice: (r)ock, (p)aper, (s)cissors? ")

# Run Conditionals
print ("You choose" + user_choice) 
print("The computer choose" + computer_choice)

if user_choice == "r" and computer_choice == "r"
    print("You tied")
if user_choice == "p" and computer_choice == "p"
    print("You tied")
if user_choice == "s" and computer_choice == "s"
    print("You tied")

if user_choice == "r" and computer_choice == "p"
    print("You lose")