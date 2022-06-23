defmodule SpeelbookFateev.Repo.Migrations.Create.Spell do
  use Ecto.Migration

  def change do
    create table(:spells) do
      add :spellName, :string
      add :level, :integer

      add :school_id, references(:schools)
      add :source_id, references(:sources)

      add :castingTime, :string
      add :range, :string
      add :components, :string
      add :duration, :string
      add :description, :string

      timestamps()
    end

    create unique_index(:spells, [:spellName])
  end
end
