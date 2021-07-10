# Difference between a list and a tuple
# Lists are actually stored as linked lists, so insertions, deletions are very fast in lists.
# Tuples on the other hand, are stored in contiguous memory block, which make accessing them faster but adds an additional cost on insertions and deletions.

# Collections
## Lists
list = [1, "gnostic", :an_atom, true]
IO.inspect(list)
IO.puts(is_list(list))

IO.puts(length(list))

## Concatenate
IO.inspect([1, 2, 3] ++ [4, 5, 6])

## Subtract
IO.inspect([1, true, 2, false, 3, true] -- [true, false])


## Tuples
IO.inspect({2, "naga", :an_atom, false})

IO.puts(tuple_size({2, "naga", :an_atom, false}))

## Append
tuple = {:ok, "Hello"}
IO.inspect(Tuple.append(tuple, :world))

## Inserting a value
tuple1 = {:bar, :baz}
## new_tuple_1 and new_tuple_2 method is the same
new_tuple_1 = Tuple.insert_at(tuple, 0, :foo)
IO.inspect(new_tuple_1)

new_tuple_2 = put_elem(tuple, 1, :foobar)
IO.inspect(new_tuple_2)

# Notice that put_elem and insert_at returned new tuples. The original tuple stored in the tuple 
# variable was not modified because Elixir data types are immutable. By being immutable, Elixir code 
# is easier to reason about as you never need to worry if a particular code is mutating your 
# data structure in place.




# ASCI
IO.puts([104, 101, 108, 108, 111])
