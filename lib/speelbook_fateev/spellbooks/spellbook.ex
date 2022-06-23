defmodule SpeelbookFateev.Spellbooks do
  alias SpeelbookFateev.Spellbooks.Commands.{
    CreateSpellbook,
    DeleteSpellbook,
    UpdateSpellbook
  }

  alias SpeelbookFateev.Spellbooks.Queries.{
    GetSpellbook,
    ListSpellbooks
  }

  # Commands
  defdelegate create_spellbook(attrs), to: CreateSpellbook, as: :process
  defdelegate delete_spellbook(spell), to: DeleteSpellbook, as: :process
  defdelegate update_spellbook(spell, attrs), to: UpdateSpellbook, as: :process

  # Queries
  defdelegate get_spell(id), to: GetSpell, as: :process
  defdelegate list_spells(), to: ListSpells, as: :process
end
