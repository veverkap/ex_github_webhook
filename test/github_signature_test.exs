defmodule GitHubSignatureTest do
  use ExUnit.Case
  use Plug.Test
  import ExGithubWebhook.Factory

  test "checks github signature is correct" do
    secret = "SOMEFAKESECRET"
    item = build(:check_run_event)

    payload = Jason.encode!(item)

    calculated_signature =
      "sha1=" <> (:crypto.hmac(:sha, secret, payload) |> Base.encode16(case: :lower))

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_run")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "check_run"
  end

  test "checks github signature is incorrect" do
    secret = "SOMEFAKESECRET"
    item = build(:check_run_event)

    payload = Jason.encode!(item)

    calculated_signature =
      "sha1=" <> (:crypto.hmac(:sha, "NOTTHESAMESECRET", payload) |> Base.encode16(case: :lower))

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_run")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 403
    assert conn.halted
  end
end
