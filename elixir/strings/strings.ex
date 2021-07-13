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

# Check if two strings are Anagrams
# Graphemes consist of multiple codepoints that are rendered as a single character i.e á

defmodule Anagram do
  # Check if parametes are binaries, 
  # thats the way we check if a parameter is a String in Elixir
  def anagrams?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end

IO.puts Anagram.anagrams?("Hello", "ohell")
IO.puts Anagram.anagrams?("María", "íMara") # This would not work without graphemes

