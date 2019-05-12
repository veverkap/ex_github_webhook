defmodule ExGithubWebhook do
  import Plug.Conn
  require Logger

  def init(options) do
    options
  end

  def call(conn, options) do
    # headers = conn.req_headers
    {:ok, payload, _conn} = read_body(conn)
    # result = Jason.decode!(payload)
    # IO.inspect(result)
    conn |> send_resp(200, "OK")
  end
end
