defmodule PhoenixLiveviewWeb.PageController do
  use PhoenixLiveviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
