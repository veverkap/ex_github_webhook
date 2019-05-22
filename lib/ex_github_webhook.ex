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

    secret = get_config(options, :secret)

    conn
    |> check_signature(secret, hub_signature)
    |> route(github_event)
  end

  defp load_request_header(conn, key) do
    get_req_header(conn, key)
    |> List.first()
  end

  defp check_signature(conn, secret, hub_signature) do
    {:ok, payload, _conn} = read_body(conn)

    if verify_signature(payload, secret, hub_signature) do
      Logger.debug(fn -> "Signature Verified" end)

      conn
      |> put_private(:hub_signatured_verified, true)
    else
      Logger.warn(fn -> "Signature Was Incorrect" end)

      conn
      |> put_private(:hub_signatured_verified, false)
    end
  end

  defp route(%{private: %{hub_signatured_verified: false}} = conn, _),
    do: conn |> send_resp(403, "Forbidden") |> halt()

  defp route(conn, github_event) do
    conn
    |> put_private(:github_event, github_event)
    |> send_resp(200, "OK")
  end

  defp verify_signature(payload, secret, hub_signature) do
    calculated_signature =
      "sha1=" <> (:crypto.hmac(:sha, secret, payload) |> Base.encode16(case: :lower))

    Plug.Crypto.secure_compare(calculated_signature, hub_signature)
  end

  defp get_config(options, key), do: options[key] || get_config(key)

  defp get_config(key) do
    case Application.get_env(:ex_github_webhook, key) do
      nil ->
        Logger.warn(fn -> "Could not find config key #{key}" end)
        ""

      anything ->
        anything
    end
  end
end
