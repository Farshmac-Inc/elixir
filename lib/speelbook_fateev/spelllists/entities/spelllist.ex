defmodule SpeelbookFateev.Spelllists.Entities.Spelllist do
  alias SpeelbookFateev.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  @required [:spell_id]

  schema "spelllists" do
    many_to_many :accounts, User, join_through: "spellbooks"

    timestamps()
  end

  def create_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> assoc_constraint(:spell_id)
    |> unique_constraint(:spelllistName, message: "Such a spelllist has already been added.")
  end

  def update_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> assoc_constraint(:spell_id)
    |> unique_constraint(:spelllistName, message: "Such a spelllist has already been added.")
 end
end
