defmodule WebAppWeb.Schema.Types.CreateUserInput.Type do
  @moduledoc false
  use Absinthe.Schema.Notation

  input_object :create_user_input do
    field(:name, non_null(:string))
  end
end
