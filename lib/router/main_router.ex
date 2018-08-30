defmodule Router.MainRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "hello")
  end

  forward "/sites", to: Router.SitesRouter 
  
  
  match _ do
    send_resp(conn, 404, "oops")
  end
end