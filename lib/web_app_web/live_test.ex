defmodule MyAppWeb.LiveTest do
  # In Phoenix apps, the line is typically: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    <button phx-click="inc_temperature">+</button>
    Current temperature: <%= @temperature %>
    """
  end

  def mount(_, _, socket) do
    IO.inspect("mount")
    temperature = 103
    {:ok, assign(socket, :temperature, temperature)}
  end

  def handle_event("inc_temperature", _, socket) do
    IO.inspect("handle_event")
    new = 300
    {:noreply, assign(socket, :temperature, new)}
  end
end
