defmodule ExampleWeb.OneLive do
  use ExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <button phx-click="two" id="two">Go to Two (different session)</button>
    <button phx-click="three" id="three">Go to Three (same session)</button>
    """
  end

  def handle_event("two", _params, socket) do
    socket =
      socket
      |> put_flash(:info, "You pressed two!")
      |> push_navigate(to: "/two")

    {:noreply, socket}
  end

  def handle_event("three", _params, socket) do
    socket =
      socket
      |> put_flash(:info, "You pressed three!")
      |> push_navigate(to: "/three")

    {:noreply, socket}
  end
end
