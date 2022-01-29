defmodule StringHelpers do
  # String.t() and binary is the same
  @type word() :: String.t()

  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word) > 8
  end
end

defmodule Calculator do

  @spec sum(number(), number()) :: number()
  def sum(a, b) do
    a + b
  end

  @spec hello(binary(), binary()) :: binary()
  def hello(a, b) do
    IO.puts("Hello #{a} and #{b}")
  end

end
