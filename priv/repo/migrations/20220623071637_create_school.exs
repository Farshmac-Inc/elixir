defmodule SpeelbookFateev.Repo.Migrations.CreateSchool do
  use Ecto.Migration

  def change do
    create table(:schools) do
      add :schoolName, :string

      timestamps()
      end

    create unique_index(:schools, [:schoolName])
  end
end
