defmodule ExampleWeb.TwoLive do
  use ExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Hello from Two! <.link navigate="/one">Back to One</.link>
    """
  end
end
