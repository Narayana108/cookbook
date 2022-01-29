# Elixir

## Elixir shell
Open shell
```
iex
```

Docs 
```
h List.first
h String.upcase
```

Open app in shell and access modules and functions
```
iex -S mix
h SentGrid.sent_email
Manager.send_email(:support)
r SentGrid   # Reload Modlue
c("looker.ex") # Compile modlue into shell
```

## Mix
Create a new project
```
mix new project_name
```
The above is the same as
```
mix new project_name --modlue ProjectName
```

# Docs
https://elixir-lang.org/docs.html

## Phoenix
### Bootstrap phoenix
```sh
# Create phoenix skeleton
mix phx.new hello

# Create database
cd hello
mix ecto.create

# Start server
mix phx.server
```

Run your app inside IEx (Interactive Elixir) as:
```sh
iex -S mix phx.server
```
