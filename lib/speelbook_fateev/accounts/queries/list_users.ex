defmodule SpeelbookFateev.Accounts.Queries.ListUsers do
  alias SpeelbookFateev.Accounts.Entities.User
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(User)
  end
end
