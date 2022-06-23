defmodule SpeelbookFateev.Spellbooks.Queries.GetSpellbook do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Spellbooks.Entities.Spellbook
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(Spellbook, id)
  end
end
