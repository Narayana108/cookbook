guess = 46

cond do
  guess == 10 -> IO.puts "You guessed 10!"    # Execute if this condition if true
  guess == 46 -> IO.puts "You guessed 46!"    # Execute if this condition if true
  guess == 42 -> IO.puts "You guessed 42!"    # Execute if this condition if true
  true        -> IO.puts "I give up."         # Execure if non of the above are true
end
