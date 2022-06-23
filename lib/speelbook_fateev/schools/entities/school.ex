defmodule SpeelbookFateev.Schools.Entities.School do
  alias SpeelbookFateev.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  @required [:schoolName]

  schema "schools" do
    field :schoolName, :string

    has_many :spells, Spell

    timestamps()
  end

  def create_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:schoolName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:school, message: "Such a school has already been added.")
  end

  def update_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:schoolName, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:school, message: "Such a school has already been added.")
  end

end
