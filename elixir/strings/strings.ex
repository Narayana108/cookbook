str = "Namaste Jee"
a = ""

IO.puts(str)
IO.puts(String.length(str))
IO.puts(String.length(a))

# String Interpolation
x = "Vishnu"
y = "Garuda is #{x} carrier"

IO.puts(y)

# Concatenation
c = "Om"
d = "Shiva"
f = "Namah"
shiv_mantra = c <> " " <> d <> " " <> f
IO.puts(shiv_mantra)

# Reverse
IO.puts(String.reverse("Elixir"))

# Matching
IO.puts(String.match?("foo", ~r/foo/))
IO.puts(String.match?("bar", ~r/foo/))
