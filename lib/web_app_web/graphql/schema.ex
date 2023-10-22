defmodule WebAppWeb.Schema do
  @moduledoc false
  use Absinthe.Schema

  import_types(WebAppWeb.Schema.Types.Query.Type)

  query(name: "queryaaazzz") do
    import_fields(:query_type_fields)
  end
end
