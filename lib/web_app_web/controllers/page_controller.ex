defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  import :rand

  alias WebApp.Models.Weather

  def home(conn, _params) do
    name = "Michael Caterisano"
    title = "Software Engineer"

    render(conn, :home, layout: false, props: %{name: name, title: title})
  end

  def notes(conn, _params) do
    render(conn, :notes, layout: false)
  end

  def weather(conn, _params) do
    weather = %Weather{temp_hi: uniform(100)}
    WebApp.Repo.insert!(weather)
    render(conn, :weather, layout: false)
  end
end
