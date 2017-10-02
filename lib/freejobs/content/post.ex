defmodule Freejobs.Content.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Freejobs.Content.Post
  alias Freejobs.Accounts.User


  schema "posts" do
    field :body, :string
    field :title, :string
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body, :password])
    |> validate_required([:title, :body])
  end
end
