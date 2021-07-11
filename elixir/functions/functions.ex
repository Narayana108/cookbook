# Anonymous functions

add = fn a, b -> a + b end

IO.puts(add.(1, 2))


## Capture Operator
## Different syntax for the same as above

sum = &(&1 + &2)
IO.puts(sum.(1, 2))

# Pattern matching functions

handle_result = fn
  {var_1} -> IO.puts("#{var_1} found in a tuple!")
  {var_2, var_3} -> IO.puts("#{var_2} and #{var_3} found!")
end

handle_result.({"Om Tat Sat"})
handle_result.({"Om", "Shiva"})


# Named Functions
# Are always defined in a module
# To call a named function, we need to reference them using their module

defmodule Math do
  def sum(a, b) do
    a + b
  end
  
  # One liner function
  def sum_2(a, b), do: a + b
end

IO.puts(Math.sum(5, 6))
IO.puts(Math.sum_2(4, 8))


# Private Function
# Can only be accesed from within the module which they are defined

defmodule Greeter do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, "   # Private function
end

IO.puts(Greeter.hello("world"))

# Default Arguments
defmodule Salutations do
  def hello(name, country \\ "in") do
    phrase(country) <> name
  end

  defp phrase("in"), do: "Namaskar, "
  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

IO.puts(Salutations.hello("Narayan Das"))
IO.puts(Salutations.hello("Narayan Das", "es"))

# Guards
defmodule The_greeter do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

IO.puts(The_greeter.hello ["Garuda", "Ganesha"])
IO.puts(The_greeter.hello ["Surya Jee"])
