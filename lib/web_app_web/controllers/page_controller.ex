defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  import :rand

  def home(conn, _params) do
    name = "Michael Caterisano"
    title = "Software Engineer"

    conn
    |> render(:home, layout: false, props: %{name: name, title: title})
  end

  def notes(conn, _params) do
    render(conn, :notes, layout: false)
  end
end
