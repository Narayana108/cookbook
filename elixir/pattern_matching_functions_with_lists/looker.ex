defmodule Looker do
  # By having the same variable name 'item' pattern matching is done automatically
  def search([item | _rest], item) do
    IO.puts("Item found!")
    # Return Item
    item
  end

  # Go's through the rest of the items in the list
  # By calling the function again
  def search([_item | rest], item) do
    search(rest, item)
  end

  # If we have gone through the entire list
  def search([], _item) do
    IO.puts("No match found :'( ")
  end
end
