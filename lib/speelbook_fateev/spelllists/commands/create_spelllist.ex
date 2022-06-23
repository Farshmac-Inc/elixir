defmodule SpeelbookFateev.Spelllists.Commands.CreateSpelllist do
  alias SpeelbookFateev.Spelllists.Entities.Spelllist
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %Spelllist{}
    |> Spelllist.create_changeset(attrs)
    |> Repo.insert()
  end
end
