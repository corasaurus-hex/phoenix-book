defmodule Rumbl.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories, primary_key: false) do
      add :id, :bigserial, primary_key: true
      add :name, :string

      timestamps()
    end

    create unique_index(:categories, [:name])
  end
end
