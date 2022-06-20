defmodule SpeelbookFateev.Accounts.Commands.DeleteUser do
  alias SpeelbookFateev.Accounts.Entities.User
  alias SpeelbookFateev.Repo

  def process(%User{} = user) do
    Repo.delete(user)
  end
end
