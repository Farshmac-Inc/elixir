defmodule SpeelbookFateev.Spellbooks.Entities.Spellbook do
  alias SpeelbookFateev.Spells.Entities.Spell
  alias SpeelbookFateev.Accounts.Entities.User
  use Ecto.Schema

  import Ecto.Changeset

  @required [:spellbook_id, :user_id]

  schema "spellbooks" do
    many_to_many :spells, Spell, join_through: "spelllist"

    timestamps()
  end

  def create_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> assoc_constraint(:spellbook_id)
    |> assoc_constraint(:user_id)
  end

  def update_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> assoc_constraint(:spellbook_id)
    |> assoc_constraint(:user_id)
   end
end
