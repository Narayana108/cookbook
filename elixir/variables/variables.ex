# Data types and variables

## Integer
number = 42
IO.puts number

## Float
float = 64.64
IO.puts float

## String
string = "Hello"
IO.puts string

## Atoms
## Atoms are constants whose name is their value. They can be created using the color(:) symbol. For example,
:blue
IO.puts :blue

## Boolean
IO.puts :true
IO.puts true

## Collections
### Lists
list = [1, "gnostic", :an_atom, true]
IO.inspect(list)

# ASCI
IO.puts([104, 101, 108, 108, 111])

### Tuples
tuple = {2, "naga", :an_atom, false}
IO.inspect(tuple)

# Difference between a list and a tuple
# Lists are actually stored as linked lists, so insertions, deletions are very fast in lists.
# Tuples on the other hand, are stored in contiguous memory block, which make accessing them faster but adds an additional cost on insertions and deletions.

## Pattern Matching
x = 12
x = "Hello"
IO.puts(x)

[var_1, _unused_var, var_2] = [{"First variable"}, 25, "Second variable"]
IO.inspect(var_1)
IO.puts(var_2)
