defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  def home(conn, _params) do
        render(conn, :home, layout: false)
  end

  def notes(conn, _params) do
    render(conn, :notes, layout: false)
  end
end
