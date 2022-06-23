defmodule SpeelbookFateev.Spelllists do
  alias SpeelbookFateev.Spelllists.Commands.{
    CreateSpelllist,
    DeleteSpelllist,
    UpdateSpelllist
  }

  alias SpeelbookFateev.Spelllists.Queries.{
    GetSpelllist,
    ListSpelllists
  }

  # Commands
  defdelegate create_spelllist(attrs), to: CreateSpelllist, as: :process
  defdelegate delete_spelllist(spell), to: DeleteSpelllist, as: :process
  defdelegate update_spelllist(spelllist, attrs), to: UpdateSpelllist, as: :process

  # Queries
  defdelegate get_spelllist(id), to: GetSpelllist, as: :process
  defdelegate list_spelllists(), to: ListSpelllists, as: :process
end
