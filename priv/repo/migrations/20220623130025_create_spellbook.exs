defmodule SpeelbookFateev.Repo.Migrations.CreateSpellbook do
  use Ecto.Migration

  def change do
    create table(:spellbooks) do
      add :user_id, :references(:users)
      add :spelllist_id, :references(:listspells)

      timestamps()
    end

    create unique_index(:spellbooks, [:user_id, :spelllist_id])
  end
end
