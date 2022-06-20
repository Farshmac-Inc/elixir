defmodule SpeelbookFateev.Accounts.Queries.GetUser do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Accounts.Entities.User
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(User, id)
  end
end
