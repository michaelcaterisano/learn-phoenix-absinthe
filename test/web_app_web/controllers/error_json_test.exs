defmodule WebAppWeb.ErrorJSONTest do
  use WebAppWeb.ConnCase, async: true

  test "renders 404" do
    assert WebAppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert WebAppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
