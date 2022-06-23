defmodule SpeelbookFateev.Spells.Commands.DeleteSpell do
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Repo

  def process(%Spell{} = spell) do
    Repo.delete(spell)
  end
end
