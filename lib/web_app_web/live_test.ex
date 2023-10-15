defmodule WebAppLive.LiveTest do
  # In Phoenix apps, the line is typically: use MyAppWeb, :live_view
  use Phoenix.LiveView

  alias WebAppWeb.CoreComponents

  def render(assigns) do
    ~H"""
    <CoreComponents.back navigate="/">Back to home</CoreComponents.back>
    <button
      phx-click="inc_temperature"
      class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded"
    >
      increment
    </button>
    <.live_component module={WebAppLive.TestComponent} id={1} temperature={assigns.temperature}/>
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
