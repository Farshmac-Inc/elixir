defmodule SpeelbookFateev.Spelllists.Commands.DeleteSpelllist do
  alias SpeelbookFateev.Spelllists.Entities.Spelllist
  alias SpeelbookFateev.Repo

  def process(%Spelllist{} = spelllist) do
    Repo.delete(spelllist)
  end
end
