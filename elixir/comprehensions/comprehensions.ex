# Comprehensions work with any enumerables

IO.puts "Lists:"
list = [1, 2, 3, 4, 5]
for x <- list, do: IO.puts x*x

IO.puts "\nKeyword lists:"
for {_key, val} <- [one: 1, two: 2, three: 3], do: IO.puts val

IO.puts "\nMaps:"
for {k, v} <- %{"a" => "A", "b" => "B"}, do: IO.inspect {k, v}

IO.puts "\nBinaries:"
for <<c <- "hello">>, do: IO.puts <<c>>

# Like many other things in Elixir, generators rely on pattern matching to compare their input set to the left side variable. In the event a match is not found, the value is ignored:

IO.puts "\nKeyword list, pattern matching:"
for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: IO.puts val

# It’s possible to use multiple generators, much like nested loops:

IO.puts "\nMultiple generators:"
for n <- list, times <- 1..n, do: IO.puts "#{n} - #{times}"

# Filters
import Integer
IO.puts "\nEven numbers:"
for x <- 1..10, is_even(x), do: IO.puts x

IO.puts "\nMultiple Filters:"
for x <- 1..100, is_even(x), rem(x, 3) == 0, do: IO.puts x

# Into
# Produce a different output other than lists
IO.puts "\ninto:"
for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: IO.inspect {k, v}

# Since binaries are collectables we can use list comprehensions and :into to create strings:

for c <- [72, 101, 108, 108, 111], into: "", do: IO.inspect <<c>>
