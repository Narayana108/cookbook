# Function arity
# Arity is a fancy name for the number of arguments a function receives. A function is
# uniquely identified by its containing module, its name, and its arity

# This is to demonstrate functions with the same name but different arities

defmodule User do
  defp update_db(type, field) do
    IO.puts("#{type}: #{field} added to db")
  end

  defp send_email(email) do
    IO.puts("Email sent to: #{email}")
  end

  defp create_btc_wallet do
    IO.puts("Bitcoin wallet created")
  end

  def add(name, email) do
    random = to_string(Enum.random(1..500))
    user_id = random <> "." <> name
    add(name, email, user_id)
  end

  def add(name, email, user_id) do
    update_db("name", name)
    update_db("email", email)
    update_db("user_id", user_id)
    create_btc_wallet()
    send_email(email)
  end
end

# Default user argument
# Even though we only define one function below, because of the default arguement
# the elixir shell it creates 2 functions with the same name but different arities
defmodule Calculate do
  # Tax
  defp tax(price, tax) do
    tax_total = price + price * tax / 100

    IO.puts("Untaxed price: #{price}")
    IO.puts("Price + #{tax}% tax: #{tax_total}")
    tax_total
  end

  # Discount + Expired stock 
  def total(price, tax, discount, expired \\ false) do
    tax_total = tax(price, tax)
    expired_discount = 50
    discounted_price = tax_total - tax_total * discount / 100
    IO.puts("Price has #{discount}% discount: #{discounted_price}")

    if expired do
      # Executes if true
      expired_price = discounted_price - discounted_price * expired_discount / 100
      IO.puts("Price has #{expired_discount}% expired_discount: #{expired_price}")
    else
      IO.puts("Item has not expired yet")
    end
  end
end
