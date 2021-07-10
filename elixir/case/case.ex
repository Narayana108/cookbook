# Replaces traditional switch case

case 3 do
  1 -> IO.puts("Im one")
  2 -> IO.puts("Im two")
  3 -> IO.puts("Im three")
  _ -> IO.puts("Oops, you don't match")
end
