defmodule TestPrivate do
  # attribute aka constant
  @pi 2.1234
  def double(a) do
    sum(a, a)
  end

  defp sum(a, b) do
    a + b + @pi
  end
end

# import
defmodule Mymodule do
  import IO
  import Enum

  def hello do
    puts("Hi")
    sum(1..10)
    is_binary("hello")
    Kernel.is_binary("hello")
  end
end
