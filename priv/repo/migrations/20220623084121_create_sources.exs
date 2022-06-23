defmodule SpeelbookFateev.Repo.Migrations.CreateSources do
  use Ecto.Migration

  def change do
    create table(:sources) do
      add :sourceName, :string

      timestamps()
    end

    create unique_index(:sources, [:sourceName])
  end
end
