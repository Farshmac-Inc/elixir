defmodule SpeelbookFateev.Repo.Migrations.CreateSpell do
  use Ecto.Migration

  def change do
    create table(:listspells) do
      add :spell_id, :references(:spells)

      timestamps()
    end

    create unique_index(:listspells, [:spell_id])
  end
end
