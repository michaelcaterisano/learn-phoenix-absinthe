defmodule MyAppWeb.LiveTest do
  # In Phoenix apps, the line is typically: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    <button phx-click="inc_temperature" class="rounded-lg bg-indigo-600">increment</button>
    Current temperature: <%= @temperature %>

    <br>
    <a href="/">Home</a>

    <br>
    <a href="/notes">Notes</a>
    """
  end

  def mount(_, _, socket) do
    temperature = 103
    {:ok, assign(socket, :temperature, temperature)}
  end

  def handle_event("inc_temperature", _, socket) do
    temperature = socket.assigns.temperature + 1
    {:noreply, assign(socket, :temperature, temperature)}
  end
end
