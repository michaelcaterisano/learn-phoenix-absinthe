defmodule WebAppWeb.Layouts do
  @moduledoc """
  This module defines the layout for the application.
  """

  use WebAppWeb, :html

  embed_templates("layouts/*")
end
