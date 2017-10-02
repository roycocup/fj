defmodule Freejobs.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Freejobs.Accounts.User
  alias Freejobs.Content.Post


  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string

    has_many :posts, Post

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email])
  end
end
