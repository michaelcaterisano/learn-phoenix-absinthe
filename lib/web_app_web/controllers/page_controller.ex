defmodule WebAppWeb.PageController do
  use WebAppWeb, :controller

  def home(conn, _params) do
    # the second argument is the template name as an atom
    # add some data to the assigns

    render(conn, :home, layout: false)
  end
end
