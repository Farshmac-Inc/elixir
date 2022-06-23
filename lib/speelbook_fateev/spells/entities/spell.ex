defmodule SpeelbookFateev.Spells.Entities.Spell do
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Schools.Entities.School
  use Ecto.Schema

  import Ecto.Changeset

  @required [:spellName, :level, ]

  schema "spells" do
    field :spellName, :string
    field :level, :integer
    belongs_to :school, School
    belongs_to :source, Source
    field :castingTime, :string
    field :range, :string
    field :components, :string
    field :duration, :string
    field :description, :string

    many_to_many :spellbooks, Spellbook, join_through: "spelllist"

    timestamps()
  end

  def create_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> validate_format(:spellName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:components, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:castingTime, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:range, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:duration, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:description, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_number(:level, greater_than: 0, less_than: 9, message: "Invalid input format.")
    |> assoc_constraint(:school_id)
    |> assoc_constraint(:source_id)
    |> unique_constraint(:spellName, message: "Such a source has already been added.")
  end

  def update_changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> validate_format(:spellName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:components, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:castingTime, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:range, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:duration, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_format(:description, ~r/^[a-zA-Z0-9]*$/, message: "Invalid input format.")
    |> validate_number(:level, greater_than: 0, less_than: 9, message: "Invalid input format.")
    |> assoc_constraint(:school_id)
    |> assoc_constraint(:source_id)
    |> unique_constraint(:spellName, message: "Such a source has already been added.")
  end
end
