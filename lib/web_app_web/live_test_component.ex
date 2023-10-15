defmodule WebAppLive.TestComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      Current temperature: <%= @temperature %>
    </div>
    """
  end
end
