defmodule Freejobs.Repo.Migrations.AddUserField do
  use Ecto.Migration

  def change do
  	
  	alter table(:posts) do
      add :user, :integer
    end

  end
end
