# Equavelant to a hash or a dictionairy

# Keyword lists are a convenient way to address content stored in lists by key, but underneath, Elixir is still walking through the list. That might be suitable if you have other plans for that list requiring walking through all of it, but it can be an unnecessary overhead if you are planning to use keys as your only approach to the data.

# This is where maps come to your rescue. Whenever you need a key-value store, maps are the “go to” data structure in Elixir.

# Keys must be atoms
# Keys are orderd, as specified by the developer
# Keys can be given more than once

 
# There are two ways of defining a keyword_list
list_1 = [{:a, 1}, {:b, 2}]
list_2 = [a: 1, b: 2]
IO.puts(list_1 == list_2)

list = [a: "snake", b: "bird"]
IO.inspect(list)
IO.puts(list[:a])

# Accessing a key
k1 = [a: 1, a: 2, b: 3]
IO.puts(Keyword.get(k1, :a))
IO.inspect(Keyword.get_values(k1, :a))


# Insert
kl = [a: 1, a: 2, b: 3]
kl_new = Keyword.put_new(k1, :c, 5)
IO.puts(Keyword.get(kl_new, :c))


# Delete
kl = [a: 1, a: 2, b: 3, c: 0]
IO.inspect(kl)
kl = Keyword.delete_first(kl, :b)
IO.inspect(kl)
kl = Keyword.delete(kl, :a)
IO.inspect(kl)
