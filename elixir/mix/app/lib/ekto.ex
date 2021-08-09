defmodule Ekto do

  def save_user(params) do
    user = Map.put(params, :id, 1)
    IO.puts "user saved to db."
    {:ok, user}
  end

end
