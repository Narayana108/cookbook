#  Elixir provides an alternative syntax for representing and working with literals. 

#  A list of available sigils include:

#  ~C Generates a character list with no escaping or interpolation
#  ~c Generates a character list with escaping and interpolation
#  ~R Generates a regular expression with no escaping or interpolation
#  ~r Generates a regular expression with escaping and interpolation
#  ~S Generates a string with no escaping or interpolation
#  ~s Generates a string with escaping and interpolation
#  ~W Generates a word list with no escaping or interpolation
#  ~w Generates a word list with escaping and interpolation
#  ~N Generates a NaiveDateTime struct
#  ~U Generates a DateTime struct (since Elixir 1.9.0)
#  A list of delimiters include:

#  <...> A pair of pointy brackets
#  {...} A pair of curly brackets
#  [...] A pair of square brackets
#  (...) A pair of parentheses
#  |...| A pair of pipes
#  /.../ A pair of forward slashes
#  "..." A pair of double quotes
#  '...' A pair of single quotes

# Executes with interpolation
IO.puts(~c/2 + 7 = #{2 + 7}/)

# Executes without interpolation
IO.puts(~C/2 + 7 = #{2 + 7}/)

re = ~r/elixir/
IO.puts "Elixir" =~ re
IO.puts "elixir" =~ re

# =~ 
# Text-based match operator. Matches the term on the left against the regular expression or string on the right.
# If right is a regular expression, returns true if left matches right.
# If right is a string, returns true if left contains right.

IO.puts "foo" =~ "f"

IO.puts ~s/welcome to elixir #{String.downcase "SCHOOL"}/
IO.puts ~S/welcome to elixir #{String.downcase "SCHOOL"}/

IO.inspect ~w/i love #{'e'}lixir school/
IO.inspect ~W/i love #{'e'}lixir school/
