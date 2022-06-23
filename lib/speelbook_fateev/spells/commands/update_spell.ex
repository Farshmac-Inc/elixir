defmodule SpeelbookFateev.Spells.Commands.UpdateSpell do
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Repo

  def process(%Spell{} = spell, attrs) do
    spell
    |> Spell.update_changeset(attrs)
    |> Repo.update()
  end
end
