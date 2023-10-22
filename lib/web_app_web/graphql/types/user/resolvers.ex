defmodule WebAppWeb.Schema.Types.User.Resolvers do
  @moduledoc false

  def name(_, _, _), do: {:ok, "some name"}
  def email(_, _, _), do: {:ok, "some email"}
end
