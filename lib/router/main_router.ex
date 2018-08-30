defmodule Router.MainRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    page = EEx.eval_file("views/index.html.eex")
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, page)
  end

  forward "/sites", to: Router.SitesRouter 
  
  
  match _ do
    send_resp(conn, 404, "oops")
  end
end