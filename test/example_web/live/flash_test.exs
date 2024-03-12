defmodule ExampleWeb.FlashTest do
  use ExampleWeb.ConnCase
  import Phoenix.LiveViewTest

  test "one to two (different session)", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/one")

    {:ok, _view, html} =
      view
      |> element("button#two")
      |> render_click()
      |> follow_redirect(conn)

    refute html =~ "You pressed two!"
  end

  test "one to three (same session)", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/one")

    {:ok, _view, html} =
      view
      |> element("button#three")
      |> render_click()
      |> follow_redirect(conn)

    assert html =~ "You pressed three!"
  end
end
