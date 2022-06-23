defmodule SpeelbookFateev.Spelllists.Commands.UpdateSpelllist do
  alias SpeelbookFateev.Spelllists.Entities.Spelllist
  alias SpeelbookFateev.Repo

  def process(%Spelllist{} = spelllist, attrs) do
    spelllist
    |> Spelllist.update_changeset(attrs)
    |> Repo.update()
  end
end
