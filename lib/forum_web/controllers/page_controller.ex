defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 2, name: "Bob", email: "bob@email.com"},
      %{id: 3, name: "Charlie", email: "charlie@email.com"},
      %{id: 4, name: "Dan", email: "dan@email.com"},
      %{id: 5, name: "Eve", email: "eve@email.com"}
    ]
    # render(conn, :users, users: users, layout: false)
    json(conn, %{users: users})
  end
end
