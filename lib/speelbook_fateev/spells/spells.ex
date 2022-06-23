defmodule SpeelbookFateev.Spells do
  alias SpeelbookFateev.Spells.Commands.{
    CreateSpell,
    DeleteSpell,
    UpdateSpell
  }

  alias SpeelbookFateev.Spells.Queries.{
    GetSpell,
    ListSpells
  }

  # Commands
  defdelegate create_spell(attrs), to: CreateSpell, as: :process
  defdelegate delete_spell(spell), to: DeleteSpell, as: :process
  defdelegate update_spell(spell, attrs), to: UpdateSpell, as: :process

  # Queries
  defdelegate get_spell(id), to: GetSpell, as: :process
  defdelegate list_spells(), to: ListSpells, as: :process
end
