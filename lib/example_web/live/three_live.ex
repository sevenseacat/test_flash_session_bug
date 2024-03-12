defmodule ExampleWeb.ThreeLive do
  use ExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Hello from Three! <.link navigate="/one">Back to One</.link>
    """
  end
end
