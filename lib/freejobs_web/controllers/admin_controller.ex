defmodule FreejobsWeb.AdminController do
  use FreejobsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
end