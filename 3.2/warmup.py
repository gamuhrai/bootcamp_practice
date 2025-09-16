import random
compNum = random.randint(1,100)

print("Hello User!")

print("what is your name?")
name = input()
print("Hello " + name)

print("what's your favorite number?")
userNum = input()

if int(userNum) > int(compNum):
    print("Your favorite number is greater than mine")

elif int(userNum) == int(compNum):
    print("Your favorite number is greater than mine")

else:
    print("Your favorite number is less than mine")

print(compNum)