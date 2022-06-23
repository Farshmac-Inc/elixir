defmodule SpeelbookFateev.Spells.Commands.CreateSpell do
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %Spell{}
    |> Spell.create_changeset(attrs)
    |> Repo.insert()
  end
end
