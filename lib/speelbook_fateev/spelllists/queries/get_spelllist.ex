defmodule SpeelbookFateev.Spelllists.Queries.GetSpelllist do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Spelllists.Entities.Spelllist
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(Spelllist, id)
  end
end
