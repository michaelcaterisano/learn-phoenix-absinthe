defmodule WebAppWeb.Schema.Types.Mutation.Type do
  @moduledoc false
  use Absinthe.Schema.Notation

  alias WebAppWeb.Schema.Types.Mutation.Resolvers

  import_types(WebAppWeb.Schema.Types.CreateUserInput.Type)
  import_types(WebAppWeb.Schema.Types.CreateUserPayload.Type)

  object :mutation_fields do
    field(:create_user, :create_user_payload) do
      arg(:input, non_null(:create_user_input))
      resolve(&Resolvers.create_user/3)
    end
  end
end
