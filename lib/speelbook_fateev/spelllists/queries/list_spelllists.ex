defmodule SpeelbookFateev.Spelllists.Queries.ListSpelllists do
  alias SpeelbookFateev.Spelllists.Entities.Spelllist
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(Spelllists)
  end
end
