defmodule ExGithubWebhook do
  import Plug.Conn
  require Logger

  def init(options) do
    options
  end

  def call(conn, options) do
    hub_signature = load_request_header(conn, "x-hub-signature")
    github_event = load_request_header(conn, "x-github-event")
    delivery = load_request_header(conn, "x-github-deliver")
    Logger.info("GitHub Event ##{delivery} Type = #{github_event}")

    conn
    |> check_signature(hub_signature)
    |> route(github_event)
  end

  defp load_request_header(conn, key) do
    get_req_header(conn, key)
    |> List.first()
  end

  defp check_signature(conn, signature), do: conn
  defp route(conn, github_event), do: send_resp(conn, 200, "OK")
end
