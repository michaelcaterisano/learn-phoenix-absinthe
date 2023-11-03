defmodule WebAppWeb.Schema.Types.User.Resolvers do
  @moduledoc false

  def name(parent, _, _), do: {:ok, parent.name}
  def email(_, _, _), do: {:ok, "some email"}
end
