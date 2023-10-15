defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  import :rand

  def home(conn, _params) do
    conn
    |> render(:home, layout: false, props: %{name: uniform(100), title: uniform(100)})
  end

  def notes(conn, _params) do
    render(conn, :notes, layout: false)
  end
end
