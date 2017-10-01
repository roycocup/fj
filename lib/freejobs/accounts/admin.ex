defmodule Freejobs.Accounts.Admin do
  use Ecto.Schema
  import Ecto.Changeset
  alias Freejobs.Accounts.Admin


  schema "admins" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Admin{} = admin, attrs) do
    admin
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
