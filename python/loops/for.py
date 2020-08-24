fruits = ["apple", "orange", "banana"]

for x in fruits:
  print(x)

# Loop through word
for x in "hello":
  print(x)

# Can use the same continue and break conditions as in while loop
for x in fruits:
  print(x)
  if(x == "orange"):
    break

print("continue")
for x in fruits:
  if(x == "orange"):
    continue
  print(x)

print("range")
for x in range(6):
  print(x)

print("next")
for x in range(2,6):
  print(x)

print("next")
for x in range(2,30,3):
  print(x)

print("else")
for x in range(4):
  print(x)
else:
  print("Finnished")

