defmodule WebAppWeb.Schema.Types.UserEvent.Type do
  @moduledoc false

  use Absinthe.Schema.Notation

  union :user_event do
    types([:create_user_payload])

    resolve_type(fn payload, res ->
      IO.inspect(payload)
      {:ok, :create_user_payload}
    end)
  end
end
