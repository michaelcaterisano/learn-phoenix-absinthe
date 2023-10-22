defmodule WebAppWeb.Schema.Types.Query.Resolvers do
  @moduledoc false
  def user(_, %{id: id}, _) do
    {:ok, %{id: id}}
  end

  def users(_, _, _) do
    {:ok, [%{id: 1}]}
  end
end
