defmodule SpeelbookFateev.Sources.Entities.Source do
  alias SpeelbookFateev.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  @required [:sourceName]

  schema "sources" do
    field :sourceName, :string

    has_many :spells, Spell

    timestamps()
  end

  def create_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> validate_format(:sourceName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:source, message: "Such a source has already been added.")
  end

  def update_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> validate_format(:sourceName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:source, message: "Such a source has already been added.")
  end

end
