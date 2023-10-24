defmodule WebAppWeb.Schema.Types.Query.Type do
  @moduledoc false
  use Absinthe.Schema.Notation

  alias WebAppWeb.Schema.Types.Query.Resolvers

  import_types(WebAppWeb.Schema.Types.User.Type)

  # The Query type is the entry point for query operations. This type is named :query_type_fields
  # instead of query because :query is a reserved atom in Absinthe.
  object :query_fields do
    @desc "Get a user by ID"
    field :user, :user do
      arg(:id, non_null(:id))
      resolve(&Resolvers.user/3)
    end

    @desc "Get a list of all users"
    field :users, list_of(:user) do
      resolve(&Resolvers.users/3)
    end
  end
end
