# While loop executes statement as long as condition is true

i = 1
while i < 6:
  print(i)
  i += 1

print("else")
a = 4
while a < 6:
  print(a)
  a += 1
else:
  print("a is no longer less that 6")

print("break")
# break
j = 10
while j < 20:
  print(j)
  if j == 14:
    break
  j += 2

print("continue")
# continue
k = 0
# removes 3
while k < 6:
  k += 1
  if k == 3:
    continue
  print(k)

