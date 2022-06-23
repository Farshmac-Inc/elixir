defmodule SpeelbookFateev.Spellbooks.Commands.CreateSpellbook do
  alias SpeelbookFateev.Spellbooks.Entities.Spellbook
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %Spellbook{}
    |> Spellbook.create_changeset(attrs)
    |> Repo.insert()
  end
end
