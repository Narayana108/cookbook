a = 33
b = 22
c = "yes"

if b > a:
    print("b is greater that a")
elif b == a:
    print("a and b are equal")
else:
    print("a is greater than b")

if a > b and c == "yes":
    print("Hooray!")

# Shorthand 
# if
if a > b: print("a is greater than b")

# if else
print("X") if a > b else print ("Y")

# 3 conditions
print("A") if a > b else print("=") if a == b else print("B")
