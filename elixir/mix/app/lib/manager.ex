defmodule Manager do

  def send_email(type) do
    case SentGrid.send_email(type) do
      {:ok, msg} -> IO.puts("Success! #{msg}")
      {:error, err} -> IO.puts("Error! #{err}")
    end
  end

  #def setup_user(params) do 
    #user = User.create(params)
    #user = User.send_email(user)
    #User.start_trial(user)
  #end

  # Pipes ! better way of doing the above
  #def setup_user(params) do
    #params
    #|> User.create()
    #|> User.send_email()
    #|> User.start_trial()
  #end

  # with statement (case statement on steriods!)
  # Even better way of handling pipes as it can handle errors
  def setup_user(params) do
    with {:ok, %{email: email} = user} <- Ekto.save_user(params),
         {:ok, msg1} <- SentGrid.send_email(email),
         {:ok, msg2} <- Trial.start(user) do
          IO.puts msg1
          IO.puts msg2
          user
    end
  end
end

