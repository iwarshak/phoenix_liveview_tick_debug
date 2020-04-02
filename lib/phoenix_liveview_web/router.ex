defmodule PhoenixLiveviewWeb.Router do
  use PhoenixLiveviewWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    # plug :fetch_flash
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixLiveviewWeb do
    pipe_through :browser

    get "/", PageController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixLiveviewWeb do
  #   pipe_through :api
  # end
end
