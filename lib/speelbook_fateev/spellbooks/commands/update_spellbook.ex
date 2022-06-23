defmodule SpeelbookFateev.Spellbooks.Commands.UpdateSpellbook do
  alias SpeelbookFateev.Spellbooks.Entities.Spellbook
  alias SpeelbookFateev.Repo

  def process(%Spellbook{} = spellbook, attrs) do
    spellbook
    |> Spellbook.update_changeset(attrs)
    |> Repo.update()
  end
end
