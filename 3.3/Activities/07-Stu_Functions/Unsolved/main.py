# @TODO: Write a function that returns the arithmetic average for a list of numbers

def average(lst):
    list_sum = sum(lst)
    list_avg = list_sum/len(lst)
    print(sum(lst))
# Test your function with the following:
print(average([1, 5, 9]))
# print(average(range(11)))
