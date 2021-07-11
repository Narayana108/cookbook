# other_function() |> new_function() |> baz() |> bar() |> foo()

IO.puts("Elixir rocks" |> String.split())

IO.puts("Elixir rocks" |> String.upcase() |> String.split())

# If the arity (number of aguements) of a 
# function is more than 1, then make sure to use parentheses
# foo(1) |> bar(2) |> baz(3)

