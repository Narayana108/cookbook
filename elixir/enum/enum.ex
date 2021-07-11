# A set of algorithms for enumarting over enumerables(lists, etc)

# This evulates all the strings to be == to the length of 3
# If one is no then it will return false
IO.puts "all:"
IO.puts(Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end))
IO.puts(Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end))

IO.puts "\nany:"
# any? will return true if atleast one of the items are true
IO.puts(Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end))

IO.puts "\nchunk:"
# Break collection into smaller groups
IO.inspect(Enum.chunk_every([1, 2, 3, 4, 5, 6], 2))

# Break collection into smaller groups on something other than size
IO.inspect(Enum.chunk_by(["one", "two", "three", "four", "five", "six"], 
  fn(x) -> String.length(x) end))

IO.puts "\nmap:"
# Hit every nth item
IO.inspect(Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end))

# Iterate of a collection
Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)

# Apply our function to each item to produce a new collection
IO.inspect(Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end))

IO.puts("\nFind the minimal value:")
# Finds the minimal value in the collection
IO.puts(Enum.min([5, 3, 0, -1]))

# Does the same, but in case the enumerable is empty, it allows us to specify a function to produce the minimum value.
IO.puts(Enum.min([], fn -> :foo end))

IO.puts("\nFind the maximal value:")
# Returns the maximal value
IO.puts(Enum.max([5, 3, 0, -1]))
IO.puts(Enum.max([], fn -> :bar end))

# rem() = remainder
IO.puts "\nfilter:"
IO.inspect(Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end))

# Distill our collection down into a single value
IO.puts "\nreduce:"
IO.puts(Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end))
IO.puts(Enum.reduce(["a","b","c"], "1", fn(x,acc)-> x <> acc end))

IO.puts "\nsort:"
IO.inspect(Enum.sort([5, 6, 1, 3, -1, 4]))
IO.inspect(Enum.sort([:foo, "bar", Enum, -1, 4]))
IO.inspect(Enum.sort([2, 3, 1], :desc))

# Removes duplicates
IO.puts "\nuniq:"
IO.inspect(Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1]))
