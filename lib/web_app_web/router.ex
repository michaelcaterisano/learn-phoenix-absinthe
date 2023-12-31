defmodule WebAppWeb.Router do
  use WebAppWeb, :router

  import Phoenix.LiveView.Router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, html: {WebAppWeb.Layouts, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", WebAppWeb do
    pipe_through(:browser)
    # render home page
    get("/", PageController, :home)
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: WebAppWeb.Schema, socket: WebAppWeb.UserSocket

    forward "/", Absinthe.Plug, schema: WebAppWeb.Schema
  end

  scope "/notes", WebAppWeb do
    pipe_through(:browser)
    # render notes page
    get("/", PageController, :notes)
  end

  scope "/weather", WebAppWeb do
    pipe_through(:browser)
    # render weather page
    get("/", PageController, :weather)
  end

  scope "/live", WebAppLive do
    pipe_through(:browser)
    live("/", LiveTest)
  end

  # Other scopes may use custom stacks.
  # scope "/api", WebAppWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:web_app, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through(:browser)

      live_dashboard("/dashboard", metrics: WebAppWeb.Telemetry)
      forward("/mailbox", Plug.Swoosh.MailboxPreview)
    end
  end
end
