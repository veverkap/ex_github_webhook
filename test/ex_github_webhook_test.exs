defmodule ExGithubWebhookTest do
  use ExUnit.Case
  use Plug.Test
  import ExGithubWebhook.Factory

  test "runs check_run" do
    item = build(:check_run_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_run")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs check_suite" do
    item = build(:check_suite_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "check_suite")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs commit_comment" do
    item = build(:commit_comment_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "commit_comment")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs content_reference" do
    item = build(:content_reference_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "content_reference")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs create" do
    item = build(:create_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "create")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs delete" do
    item = build(:delete_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "delete")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs deploy_key" do
    item = build(:deploy_key_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deploy_key")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs deployment" do
    item = build(:deployment_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deployment")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs deployment_status" do
    item = build(:deployment_status_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "deployment_status")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs fork" do
    item = build(:fork_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "fork")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs github_app_authorization" do
    item = build(:github_app_authorization_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "github_app_authorization")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs gollum" do
    item = build(:gollum_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "gollum")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs installation" do
    item = build(:installation_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "installation")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs installation_repositories" do
    item = build(:installation_repositories_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "installation_repositories")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs issue_comment" do
    item = build(:issue_comment_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "issue_comment")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs issues" do
    item = build(:issues_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "issues")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs label" do
    item = build(:label_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "label")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs marketplace_purchase" do
    item = build(:marketplace_purchase_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "marketplace_purchase")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs member" do
    item = build(:member_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "member")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs membership" do
    item = build(:membership_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "membership")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs meta" do
    item = build(:meta_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "meta")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs milestone" do
    item = build(:milestone_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "milestone")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs org_block" do
    item = build(:org_block_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "org_block")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs organization" do
    item = build(:organization_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "organization")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs page_build" do
    item = build(:page_build_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "page_build")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs project" do
    item = build(:project_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs project_card" do
    item = build(:project_card_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project_card")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs project_column" do
    item = build(:project_column_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "project_column")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs public" do
    item = build(:public_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "public")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs pull_request" do
    item = build(:pull_request_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs pull_request_review" do
    item = build(:pull_request_review_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request_review")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs pull_request_review_comment" do
    item = build(:pull_request_review_comment_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "pull_request_review_comment")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs push" do
    item = build(:push_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "push")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs registry_package" do
    item = build(:registry_package_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "registry_package")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs release" do
    item = build(:release_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "release")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs repository" do
    item = build(:repository_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs repository_import" do
    item = build(:repository_import_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository_import")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs repository_vulnerability_alert" do
    item = build(:repository_vulnerability_alert_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "repository_vulnerability_alert")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs security_advisory" do
    item = build(:security_advisory_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "security_advisory")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs star" do
    item = build(:star_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "star")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs status" do
    item = build(:status_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "status")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs team" do
    item = build(:team_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "team")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs team_add" do
    item = build(:team_add_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "team_add")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end

  test "runs watch" do
    item = build(:watch_event)

    conn =
      conn(:post, "/gh-webhook", Jason.encode!(item))
      |> put_req_header("content-type", "application/json")
      |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
      |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
      |> put_req_header("x-github-event", "watch")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end
end
