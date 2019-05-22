defmodule ExGithubWebhookTest do
  use ExUnit.Case
  use Plug.Test
  import ExGithubWebhook.Factory

  setup do
    {:ok, %{secret: "apple"}}
  end

  defp calculate_signature(secret, payload) do
    "sha1=" <> (:crypto.hmac(:sha, secret, payload) |> Base.encode16(case: :lower))
  end

  test "runs check_run", %{secret: secret} do
    payload = build(:check_run_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_run")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "check_run"
    assert conn.private.hub_signatured_verified
  end

  test "runs check_suite", %{secret: secret} do
    payload = build(:check_suite_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_suite")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "check_suite"
    assert conn.private.hub_signatured_verified
  end

  test "runs commit_comment", %{secret: secret} do
    payload = build(:commit_comment_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "commit_comment")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "commit_comment"
    assert conn.private.hub_signatured_verified
  end

  test "runs content_reference", %{secret: secret} do
    payload = build(:content_reference_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "content_reference")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "content_reference"
    assert conn.private.hub_signatured_verified
  end

  test "runs create", %{secret: secret} do
    payload = build(:create_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "create")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "create"
    assert conn.private.hub_signatured_verified
  end

  test "runs delete", %{secret: secret} do
    payload = build(:delete_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "delete")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "delete"
    assert conn.private.hub_signatured_verified
  end

  test "runs deploy_key", %{secret: secret} do
    payload = build(:deploy_key_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deploy_key")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "deploy_key"
    assert conn.private.hub_signatured_verified
  end

  test "runs deployment", %{secret: secret} do
    payload = build(:deployment_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deployment")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "deployment"
    assert conn.private.hub_signatured_verified
  end

  test "runs deployment_status", %{secret: secret} do
    payload = build(:deployment_status_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deployment_status")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "deployment_status"
    assert conn.private.hub_signatured_verified
  end

  test "runs fork", %{secret: secret} do
    payload = build(:fork_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "fork")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "fork"
    assert conn.private.hub_signatured_verified
  end

  test "runs github_app_authorization", %{secret: secret} do
    payload = build(:github_app_authorization_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "github_app_authorization")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "github_app_authorization"
    assert conn.private.hub_signatured_verified
  end

  test "runs gollum", %{secret: secret} do
    payload = build(:gollum_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "gollum")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "gollum"
    assert conn.private.hub_signatured_verified
  end

  test "runs installation", %{secret: secret} do
    payload = build(:installation_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "installation")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "installation"
    assert conn.private.hub_signatured_verified
  end

  test "runs installation_repositories", %{secret: secret} do
    payload = build(:installation_repositories_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "installation_repositories")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "installation_repositories"
    assert conn.private.hub_signatured_verified
  end

  test "runs issue_comment", %{secret: secret} do
    payload = build(:issue_comment_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "issue_comment")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "issue_comment"
    assert conn.private.hub_signatured_verified
  end

  test "runs issues", %{secret: secret} do
    payload = build(:issues_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "issues")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "issues"
    assert conn.private.hub_signatured_verified
  end

  test "runs label", %{secret: secret} do
    payload = build(:label_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "label")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "label"
    assert conn.private.hub_signatured_verified
  end

  test "runs marketplace_purchase", %{secret: secret} do
    payload = build(:marketplace_purchase_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "marketplace_purchase")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "marketplace_purchase"
    assert conn.private.hub_signatured_verified
  end

  test "runs member", %{secret: secret} do
    payload = build(:member_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "member")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "member"
    assert conn.private.hub_signatured_verified
  end

  test "runs membership", %{secret: secret} do
    payload = build(:membership_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "membership")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "membership"
    assert conn.private.hub_signatured_verified
  end

  test "runs meta", %{secret: secret} do
    payload = build(:meta_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "meta")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "meta"
    assert conn.private.hub_signatured_verified
  end

  test "runs milestone", %{secret: secret} do
    payload = build(:milestone_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "milestone")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "milestone"
    assert conn.private.hub_signatured_verified
  end

  test "runs org_block", %{secret: secret} do
    payload = build(:org_block_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "org_block")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "org_block"
    assert conn.private.hub_signatured_verified
  end

  test "runs organization", %{secret: secret} do
    payload = build(:organization_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "organization")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "organization"
    assert conn.private.hub_signatured_verified
  end

  test "runs page_build", %{secret: secret} do
    payload = build(:page_build_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "page_build")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "page_build"
    assert conn.private.hub_signatured_verified
  end

  test "runs project", %{secret: secret} do
    payload = build(:project_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "project"
    assert conn.private.hub_signatured_verified
  end

  test "runs project_card", %{secret: secret} do
    payload = build(:project_card_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project_card")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "project_card"
    assert conn.private.hub_signatured_verified
  end

  test "runs project_column", %{secret: secret} do
    payload = build(:project_column_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project_column")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "project_column"
    assert conn.private.hub_signatured_verified
  end

  test "runs public", %{secret: secret} do
    payload = build(:public_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "public")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "public"
    assert conn.private.hub_signatured_verified
  end

  test "runs pull_request", %{secret: secret} do
    payload = build(:pull_request_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "pull_request"
    assert conn.private.hub_signatured_verified
  end

  test "runs pull_request_review", %{secret: secret} do
    payload = build(:pull_request_review_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request_review")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "pull_request_review"
    assert conn.private.hub_signatured_verified
  end

  test "runs pull_request_review_comment", %{secret: secret} do
    payload = build(:pull_request_review_comment_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request_review_comment")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "pull_request_review_comment"
    assert conn.private.hub_signatured_verified
  end

  test "runs push", %{secret: secret} do
    payload = build(:push_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "push")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "push"
    assert conn.private.hub_signatured_verified
  end

  test "runs registry_package", %{secret: secret} do
    payload = build(:registry_package_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "registry_package")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "registry_package"
    assert conn.private.hub_signatured_verified
  end

  test "runs release", %{secret: secret} do
    payload = build(:release_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "release")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "release"
    assert conn.private.hub_signatured_verified
  end

  test "runs repository", %{secret: secret} do
    payload = build(:repository_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "repository"
    assert conn.private.hub_signatured_verified
  end

  test "runs repository_import", %{secret: secret} do
    payload = build(:repository_import_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository_import")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "repository_import"
    assert conn.private.hub_signatured_verified
  end

  test "runs repository_vulnerability_alert", %{secret: secret} do
    payload = build(:repository_vulnerability_alert_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository_vulnerability_alert")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "repository_vulnerability_alert"
    assert conn.private.hub_signatured_verified
  end

  test "runs security_advisory", %{secret: secret} do
    payload = build(:security_advisory_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "security_advisory")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "security_advisory"
    assert conn.private.hub_signatured_verified
  end

  test "runs star", %{secret: secret} do
    payload = build(:star_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "star")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "star"
    assert conn.private.hub_signatured_verified
  end

  test "runs status", %{secret: secret} do
    payload = build(:status_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "status")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "status"
    assert conn.private.hub_signatured_verified
  end

  test "runs team", %{secret: secret} do
    payload = build(:team_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "team")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "team"
    assert conn.private.hub_signatured_verified
  end

  test "runs team_add", %{secret: secret} do
    payload = build(:team_add_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "team_add")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "team_add"
    assert conn.private.hub_signatured_verified
  end

  test "runs watch", %{secret: secret} do
    payload = build(:watch_event) |> Jason.encode!()

    calculated_signature = calculate_signature(secret, payload)

    conn =
      conn(:post, "/gh-webhook", payload)
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", calculated_signature)
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "watch")
      |> ExGithubWebhook.call(secret: secret)

    assert conn.status == 200
    assert conn.private.github_event == "watch"
    assert conn.private.hub_signatured_verified
  end
end
