defmodule SpeelbookFateev.Accounts.Commands.CreateUser do
  alias SpeelbookFateev.Accounts.Entities.User
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %User{}
    |> User.create_changeset(attrs)
    |> Repo.insert()
  end
end
