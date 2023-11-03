defmodule WebAppWeb.Schema.Types.Mutation.Resolvers do
  @moduledoc false
  use Absinthe.Schema.Notation

  def create_user(_parent, args, _resolution) do
    {:ok, %{user: %{id: 123, name: args.input.name}}}
  end
end
