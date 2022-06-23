defmodule SpeelbookFateev.Spells.Queries.GetSpell do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(Spell, id)
  end
end
