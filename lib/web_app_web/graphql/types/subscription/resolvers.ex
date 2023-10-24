defmodule WebAppWeb.Schema.Types.UserEvent.Resolvers do
  @moduledoc false

  def user_event(_, _, _) do
    IO.inspect("user event")
    {:ok, %{id: 1, name: "subscription user event"}}
  end
end
