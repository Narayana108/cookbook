# We can group multiple functions into a model.
IO.puts "\nmodule:"

defmodule Example do
  def sum(a, b) do
    a + b
  end

  def greeting(name) do
    IO.puts "Bam Bam Bhole, #{name}"
  end
end

IO.puts(Example.sum(1, 2))
IO.puts(Example.greeting("Shiva"))


# Nested modules
IO.puts "\nnested:"

defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

IO.puts(Example.Greetings.morning "Narayan")

# Module Attributes
IO.puts "\nattributes:"

defmodule Attributes do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

IO.puts(Attributes.greeting "Shankar")

# Struct
# Structs are special maps with a defined set of keys and default values. A struct must be defined within a module, which it takes its name from. It is common for a struct to be the only thing defined within a module.

#To define a struct we use defstruct along with a keyword list of fields and default values:
IO.puts "\n stuct:"

defmodule Example.User do
  #@derive {Inspect, only: [:name]} # Hides fields
  defstruct name: "Hari", roles: []
end

IO.inspect(%Example.User{})
IO.inspect(%Example.User{name: "Krishna", roles: [:enchanter]})

# Update a stuct (same as updating a map)
om = %Example.User{name: "om"}
IO.inspect(om)
aum = %{om | name: "aum"}
IO.inspect(aum)

# Composition - Interact with other modules
## alias
IO.puts "\n alias:"

defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings

  def greeting(name), do: Greetings.basic(name)
end

IO.puts(Example.greeting("Shyaam"))

# Without alias
defmodule Example do
  def greeting(name), do: Sayings.Greetings.basic(name)
end

# If there’s a conflict between two aliases or we just wish to alias to a different name entirely, we can use the :as option:
 defmodule Example do
   alias Sayings.Greetings, as: Hi

   def print_message(name), do: Hi.basic(name)
 end

 IO.puts Example.print_message("Shyaama")

