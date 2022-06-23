defmodule SpeelbookFateev.Spellbooks.Queries.ListSpellbooks do
  alias SpeelbookFateev.Spellbooks.Entities.Spellbook
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(Spellbooks)
  end
end
