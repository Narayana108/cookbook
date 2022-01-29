a = true

if a === true do
  IO.puts("Variable is true!")
else
  IO.puts("Variable is false!")
end

IO.puts("Outside the if statement")

if(a, do: IO.puts("1. code to run when true"), else: IO.puts("code to run when false"))
# brackets are optional
if a, do: IO.puts("2. code to run when true"), else: IO.puts("code to run when false")

(a && IO.puts("True")) || IO.puts("False")

### Use cond for multiple conditions
