defmodule WebAppWeb.Schema.Types.Mutation.Resolvers do
  @moduledoc false
  use Absinthe.Schema.Notation

  def create_user(_parent, _args, _resolution) do
    {:ok, %{user: %{id: 123, name: "Larry CreatedUser", email: ""}}}
  end
end
