defmodule Router.SitesRouter do
  import Plug.Conn
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    page = EEx.eval_file("views/sites/index.html.eex")
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, page)
  end

end