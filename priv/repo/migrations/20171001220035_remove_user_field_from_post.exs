defmodule Freejobs.Repo.Migrations.RemoveUserFieldFromPost do
  use Ecto.Migration

  def change do
  	alter table :posts do
  		remove :user
  	end
  end
end
