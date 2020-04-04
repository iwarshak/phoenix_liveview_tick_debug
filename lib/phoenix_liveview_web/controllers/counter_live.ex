defmodule PhoenixLiveviewWeb.CounterLive do
  use Phoenix.LiveView
  require Logger

  def render(assigns) do
    ~L"""
    <script id="run_<%= @tick %>" phx-hook="Tick">
      console.log("I was updated <%= @tick %> times")
    </script>
    Current count: <%= @counter %>
    <button phx-click="inc">+</button>
    """
  end

  def mount(_params, %{}, socket) do
    socket = socket
    |> assign(:counter, 0)
    |> assign(:tick, 0)
    {:ok, socket}
  end

  def handle_event("inc", _value, socket) do
    Logger.debug("incrementing")
    socket = socket
    # |> assign(:counter, socket.assigns.counter + 1)
    |> assign(:tick, socket.assigns.tick + 1)
    {:noreply, socket}
  end
end
