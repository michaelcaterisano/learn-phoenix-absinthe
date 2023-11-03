defmodule WebAppWeb.UserSocket do
  use Phoenix.Socket
  use Absinthe.Phoenix.Socket, schema: WebAppWeb.Schema

  @socket_id Ecto.UUID.generate()

  def connect(_params, socket, _connect_info) do
    IO.inspect("connected to socket")
    {:ok, socket}
  end

  def id(_socket), do: @socket_id
end

# Disconnect all user's socket connections and their multiplexed channels
# MyAppWeb.Endpoint.broadcast("users_socket:" <> @socket_id, "disconnect", %{})
