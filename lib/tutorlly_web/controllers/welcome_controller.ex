defmodule TutorllyWeb.WelcomeController do
  use TutorllyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
