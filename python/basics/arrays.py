import array as arr # Arrays package - Adds type and effient way to handle arrays

# Arrays
a = arr.array('d', [1.1,3.5,4.5]) # Decimals
b = arr.array('i',[2, 4, 6, 8]) # Integers
print(a)
print(b)

print("First element:", b[0])
print("Second element:", b[1])
print("Last element:", b[-1])


numbers_list = [2, 5, 62, 5, 42, 52, 48, 5]
numbers_array = arr.array('i', numbers_list)

print(numbers_array)
print(numbers_array[2:5]) #3rd to 5th
print(numbers_array[:-5]) # begining to 4h
print(numbers_array[5:]) # 6th to end
print(numbers_array[:]) # begining to end

# Lists
thislist = ["apple", "banana", "cherry"]

# Loop through list
for x in thislist:
  print(x)

# Change value
thislist[1] = "blackcurrant"
print(thislist)

# Check if item exists
if "apple" in thislist:
    print("Yes, 'apple' is in the fruits list")

# List Length
print(len(thislist))

# Append
thislist.append("orange")
print(thislist)

# Insert
thislist.insert(1, "blueberry")
print(thislist)

# Remove
thislist.remove("apple")
print(thislist)

# Remove specific index
thislist.pop(1)
print(thislist)

# Remove last index
thislist.pop()
print(thislist)

# Join 2 lists
list1 = ["a", "b", "c"]
list2 = [1, 2, 3]
list3 = list1 + list2
print(list3)

# Tuple (Unchagable array)
thistuple = ("om","tat","sat")
print(thistuple)
