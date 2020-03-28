defmodule MiniPhx.Application do
  use Application
  
  def start(:normal, []) do
    Supervisor.start_link([MiniPhxWeb.Endpoint], strategy: :one_for_one)
  end
end

defmodule MiniPhxWeb.Home do
  use Phoenix.Controller

  def index(conn, _params) do
    Phoenix.Controller.html(conn, """
Hello.
""")
  end
end

defmodule MiniPhxWeb.Router do
  use Phoenix.Router

  get("/", MiniPhxWeb.Home, :index)
end

defmodule MiniPhxWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :miniphx

  plug(MiniPhxWeb.Router)
end

defmodule MiniPhxWeb.ErrorView do
  def render("404.html", _assigns) do
    "Not found"
  end
end
