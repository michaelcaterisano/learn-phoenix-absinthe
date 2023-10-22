defmodule WebAppWeb.Schema.Types.User.Type do
  @moduledoc false
  use Absinthe.Schema.Notation

  alias WebAppWeb.Schema.Types.User.Resolvers

  @desc "A user"
  object :user do
    field :id, :id
    field :name, :string, resolve: &Resolvers.name/3
    field :email, :string, resolve: &Resolvers.email/3
  end
end
