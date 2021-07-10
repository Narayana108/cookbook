# Keyword lists are a convenient way to address content stored in lists by key, but underneath, Elixir is still walking through the list. That might be suitable if you have other plans for that list requiring walking through all of it, but it can be an unnecessary overhead if you are planning to use keys as your only approach to the data.

# This is where maps come to your rescue. Whenever you need a key-value store, maps are the “go to” data structure in Elixir.


# Maps alllow any value as a key
# Maps keys do no follow any ordering

map_1 = %{:a => 1, 2 => :b}
map_2 = %{a: 1, b: 2}

IO.inspect(map_1)
IO.inspect(map_2)

# Accessing a key
IO.puts "\nAccessing a key"
IO.puts(map_1[:a])
IO.puts(map_1[2])
IO.inspect(Map.fetch(map_1, :a))

# Accesing atom keys
# When all keys are atoms, we can access them quickly like this
IO.puts(map_1.a)

# Inserting a key
IO.puts "\nInserting a key"
new_map = Map.put(map_1, :new_val, "value")
IO.puts(new_map[:new_val])


# Pattern Matching
# Maps can be pattern matched on. When a map is on the left-hand side of a pattern match, it will match if the map on the right-hand side contains the keys on the left-hand side and their values match the ones on the left-hand side. This means that an empty map matches every map.

IO.puts "\nPattern matching"
%{:a => a} = %{:a => 1, 2 => :b}
IO.puts(a)

