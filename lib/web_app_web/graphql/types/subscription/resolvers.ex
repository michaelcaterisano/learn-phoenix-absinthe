defmodule WebAppWeb.Schema.Types.Subscription.Resolvers do
  @moduledoc false

  def user_event(payload, _, _) do
    IO.inspect(payload, label: "sub resolver payload")
    {:ok, payload}
  end
end
