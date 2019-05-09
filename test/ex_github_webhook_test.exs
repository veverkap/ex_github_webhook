defmodule ExGithubWebhookTest do
  use ExUnit.Case
  use Plug.Test

  test "greets the world" do
    item = """
    {
    "action": "deleted",
    "repository": {
    "id": 139479396,
    "node_id": "MDEwOlJlcG9zaXRvcnkxMzk0NzkzOTY=",
    "name": "student_progress_cli",
    "full_name": "flatiron-labs/student_progress_cli",
    "private": true,
    "owner": {
      "login": "flatiron-labs",
      "id": 6616956,
      "node_id": "MDEyOk9yZ2FuaXphdGlvbjY2MTY5NTY=",
      "avatar_url": "https://avatars3.githubusercontent.com/u/6616956?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/flatiron-labs",
      "html_url": "https://github.com/flatiron-labs",
      "followers_url": "https://api.github.com/users/flatiron-labs/followers",
      "following_url": "https://api.github.com/users/flatiron-labs/following{/other_user}",
      "gists_url": "https://api.github.com/users/flatiron-labs/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/flatiron-labs/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/flatiron-labs/subscriptions",
      "organizations_url": "https://api.github.com/users/flatiron-labs/orgs",
      "repos_url": "https://api.github.com/users/flatiron-labs/repos",
      "events_url": "https://api.github.com/users/flatiron-labs/events{/privacy}",
      "received_events_url": "https://api.github.com/users/flatiron-labs/received_events",
      "type": "Organization",
      "site_admin": false
    },
    "html_url": "https://github.com/flatiron-labs/student_progress_cli",
    "description": null,
    "fork": false,
    "url": "https://api.github.com/repos/flatiron-labs/student_progress_cli",
    "forks_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/forks",
    "keys_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/teams",
    "hooks_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/hooks",
    "issue_events_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/issues/events{/number}",
    "events_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/events",
    "assignees_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/assignees{/user}",
    "branches_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/branches{/branch}",
    "tags_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/tags",
    "blobs_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/languages",
    "stargazers_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/stargazers",
    "contributors_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/contributors",
    "subscribers_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/subscribers",
    "subscription_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/subscription",
    "commits_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/contents/{+path}",
    "compare_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/merges",
    "archive_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/downloads",
    "issues_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/issues{/number}",
    "pulls_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/labels{/name}",
    "releases_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/releases{/id}",
    "deployments_url": "https://api.github.com/repos/flatiron-labs/student_progress_cli/deployments",
    "created_at": "2018-07-02T18:24:40Z",
    "updated_at": "2019-05-08T16:16:43Z",
    "pushed_at": "2018-07-02T18:24:42Z",
    "git_url": "git://github.com/flatiron-labs/student_progress_cli.git",
    "ssh_url": "git@github.com:flatiron-labs/student_progress_cli.git",
    "clone_url": "https://github.com/flatiron-labs/student_progress_cli.git",
    "svn_url": "https://github.com/flatiron-labs/student_progress_cli",
    "homepage": null,
    "size": 0,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": null,
    "has_issues": true,
    "has_projects": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "archived": false,
    "disabled": false,
    "open_issues_count": 0,
    "license": null,
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "master"
    },
    "organization": {
    "login": "flatiron-labs",
    "id": 6616956,
    "node_id": "MDEyOk9yZ2FuaXphdGlvbjY2MTY5NTY=",
    "url": "https://api.github.com/orgs/flatiron-labs",
    "repos_url": "https://api.github.com/orgs/flatiron-labs/repos",
    "events_url": "https://api.github.com/orgs/flatiron-labs/events",
    "hooks_url": "https://api.github.com/orgs/flatiron-labs/hooks",
    "issues_url": "https://api.github.com/orgs/flatiron-labs/issues",
    "members_url": "https://api.github.com/orgs/flatiron-labs/members{/member}",
    "public_members_url": "https://api.github.com/orgs/flatiron-labs/public_members{/member}",
    "avatar_url": "https://avatars3.githubusercontent.com/u/6616956?v=4",
    "description": "Engineering arm of Flatiron School"
    },
    "sender": {
    "login": "veverkap",
    "id": 22348,
    "node_id": "MDQ6VXNlcjIyMzQ4",
    "avatar_url": "https://avatars3.githubusercontent.com/u/22348?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/veverkap",
    "html_url": "https://github.com/veverkap",
    "followers_url": "https://api.github.com/users/veverkap/followers",
    "following_url": "https://api.github.com/users/veverkap/following{/other_user}",
    "gists_url": "https://api.github.com/users/veverkap/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/veverkap/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/veverkap/subscriptions",
    "organizations_url": "https://api.github.com/users/veverkap/orgs",
    "repos_url": "https://api.github.com/users/veverkap/repos",
    "events_url": "https://api.github.com/users/veverkap/events{/privacy}",
    "received_events_url": "https://api.github.com/users/veverkap/received_events",
    "type": "User",
    "site_admin": false
    }
    }
    """

    conn =
      conn(:get, "/gh-webhook", item)
      |> put_req_header("x-hub-signature", "dsfa")
      |> ExGithubWebhook.call([])

    assert conn.status == 200
  end
end
