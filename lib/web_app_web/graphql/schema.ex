defmodule WebAppWeb.Schema do
  @moduledoc false
  use Absinthe.Schema

  import_types(WebAppWeb.Schema.Types.Query.Type)
  import_types(WebAppWeb.Schema.Types.Mutation.Type)
  import_types(WebAppWeb.Schema.Types.Subscription.Type)

  query do
    import_fields(:query_fields)
  end

  mutation do
    import_fields(:mutation_fields)
  end

  subscription do
    import_fields(:subscription_fields)
  end
end
