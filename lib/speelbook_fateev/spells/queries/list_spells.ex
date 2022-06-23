defmodule SpeelbookFateev.Spells.Queries.ListSpells do
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(Spells)
  end
end
