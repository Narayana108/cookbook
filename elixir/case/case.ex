# Replaces traditional switch case

case 3 do
  1 -> IO.puts("Im one")
  2 -> IO.puts("Im two")
  3 -> IO.puts("Im three")
  _ -> IO.puts("Oops, you don't match")
end

case {1, 2, 3} do
  {1, x, 3} when x > 0 -> 
    IO.puts "Will match"
  _ ->
    IO.puts "Won't match"
end
