defmodule WebAppWeb.Schema.Types.CreateUserPayload.Resolvers do
  @moduledoc false

  def create_user_metadata(_parent, _args, _info) do
    {:ok, %{message: "user created successfully"}}
  end
end
