defmodule ExGithubWebhook.Factory do
use ExMachina

def _links_factory do
  %{
    comments: build(:comments),
    commits: build(:commits),
    html: build(:html),
    issue: build(:issue),
    review_comment: build(:review_comment),
    review_comments: build(:review_comments),
    self: build(:self),
    statuses: build(:statuses)
  }
end

def account_factory do
  %{
    avatar_url: "https://github.com/images/error/octocat_happy.gif",
    events_url: "https://api.github.com/users/octocat/events{/privacy}",
    followers_url: "https://api.github.com/users/octocat/followers",
    following_url: "https://api.github.com/users/octocat/following{/other_user}",
    gists_url: "https://api.github.com/users/octocat/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/octocat",
    id: 1,
    login: "octocat",
    node_id: "MDQ6VXNlcjE=",
    organizations_url: "https://api.github.com/users/octocat/orgs",
    received_events_url: "https://api.github.com/users/octocat/received_events",
    repos_url: "https://api.github.com/users/octocat/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/octocat/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/octocat/subscriptions",
    type: "User",
    url: "https://api.github.com/users/octocat"
  }
end

def alert_factory do
  %{
    affected_package_name: "many_versioned_gem",
    affected_range: "0.2.0",
    dismiss_reason: "No bandwidth to fix this",
    dismissed_at: "2017-10-25T00:00:00+00:00",
    dismisser: build(:dismisser),
    external_identifier: "CVE-2018-3728",
    external_reference: "https://nvd.nist.gov/vuln/detail/CVE-2018-3728",
    fixed_in: "0.2.5",
    id: 7_649_605
  }
end

def app_factory do
  %{
    created_at: "2018-06-12T15:16:51Z",
    description: "",
    events: [
      "delete",
      "pull_request",
      "push"
    ],
    external_url: "https://www.netlify.com",
    html_url: "https://github.com/apps/netlify",
    id: 13473,
    name: "Netlify",
    node_id: "MDM6QXBwMTM0NzM=",
    owner: build(:owner),
    permissions: build(:permissions),
    updated_at: "2018-08-21T15:43:02Z"
  }
end

def assignee_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/8152930?v=4",
    events_url: "https://api.github.com/users/veverkap/events{/privacy}",
    followers_url: "https://api.github.com/users/veverkap/followers",
    following_url: "https://api.github.com/users/veverkap/following{/other_user}",
    gists_url: "https://api.github.com/users/veverkap/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/veverkap",
    id: 8_152_930,
    login: "veverkap",
    node_id: "MDQ6VXNlcjgxNTI5MzA=",
    organizations_url: "https://api.github.com/users/veverkap/orgs",
    received_events_url: "https://api.github.com/users/veverkap/received_events",
    repos_url: "https://api.github.com/users/veverkap/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/veverkap/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/veverkap/subscriptions",
    type: "User",
    url: "https://api.github.com/users/veverkap"
  }
end

def author_factory do
  %{
    email: "lukeghenco@gmail.com",
    name: "lukeghenco"
  }
end

def base_factory do
  %{
    label: "github:contentful",
    ref: "contentful",
    repo: build(:repo),
    sha: "cfb49ba8557a9d34ae2879b73e13627ff871ff3a",
    user: build(:user)
  }
end

def blocked_user_factory do
  %{
    avatar_url: "https://avatars2.githubusercontent.com/u/39652351?v=4",
    events_url: "https://api.github.com/users/hacktocat/events{/privacy}",
    followers_url: "https://api.github.com/users/hacktocat/followers",
    following_url: "https://api.github.com/users/hacktocat/following{/other_user}",
    gists_url: "https://api.github.com/users/hacktocat/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/hacktocat",
    id: 39_652_351,
    login: "hacktocat",
    node_id: "MDQ6VXNlcjM5NjUyMzUx",
    organizations_url: "https://api.github.com/users/hacktocat/orgs",
    received_events_url: "https://api.github.com/users/hacktocat/received_events",
    repos_url: "https://api.github.com/users/hacktocat/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/hacktocat/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/hacktocat/subscriptions",
    type: "User",
    url: "https://api.github.com/users/hacktocat"
  }
end

def build_factory do
  %{
    commit: "68ec677bd9411bd12f3587404b996b045bc101d1",
    created_at: "2019-05-12T00:25:19Z",
    duration: 13381,
    error: build(:error),
    pusher: build(:pusher),
    status: "built",
    updated_at: "2019-05-12T00:25:32Z",
    url:
      "https://api.github.com/repos/PushComedyTheater/PushComedyTheater.github.io/pages/builds/130072952"
  }
end

def changes_factory do
  %{
    permission: build(:permission)
  }
end

def check_run_factory do
  %{
    app: build(:app),
    check_suite: build(:check_suite),
    completed_at: "2019-05-10T03:03:18Z",
    conclusion: "neutral",
    details_url: "https://app.netlify.com/sites/fs5-staging/deploys/5cd4e97266b8b3000c5b0c4c",
    external_id: "5cd4e97266b8b3000c5b0c4c",
    head_sha: "c8e470c2613f799827221bb431a4da0d5f88ae3c",
    html_url: "https://github.com/github/webook-v5/runs/123764777",
    id: 123_764_777,
    name: "Pages changed - fs5-staging",
    node_id: "MDg6Q2hlY2tSdW4xMjM3NjQ3Nzc=",
    output: build(:output),
    pull_requests: [
      %{
        base: %{
          ref: "contentful",
          repo: %{
            id: 171_742_482,
            name: "dotcom-v5",
            url: "https://api.github.com/repos/github/webook-v5"
          },
          sha: "cfb49ba8557a9d34ae2879b73e13627ff871ff3a"
        },
        head: %{
          ref: "google-maps",
          repo: %{
            id: 171_742_482,
            name: "dotcom-v5",
            url: "https://api.github.com/repos/github/webook-v5"
          },
          sha: "c8e470c2613f799827221bb431a4da0d5f88ae3c"
        },
        id: 277_614_968,
        number: 211,
        url: "https://api.github.com/repos/github/webook-v5/pulls/211"
      }
    ],
    started_at: "2019-05-10T03:01:08Z",
    status: "completed",
    url: "https://api.github.com/repos/github/webook-v5/check-runs/123764777"
  }
end

def check_suite_factory do
  %{
    after: "c8e470c2613f799827221bb431a4da0d5f88ae3c",
    app: build(:app),
    before: "ad8d68dca7525377d6a4597e1a991b77794f6caa",
    conclusion: nil,
    created_at: "2019-05-10T02:59:40Z",
    head_branch: "google-maps",
    head_sha: "c8e470c2613f799827221bb431a4da0d5f88ae3c",
    id: 115_034_341,
    node_id: "MDEwOkNoZWNrU3VpdGUxMTUwMzQzNDE=",
    pull_requests: [
      %{
        base: %{
          ref: "contentful",
          repo: %{
            id: 171_742_482,
            name: "dotcom-v5",
            url: "https://api.github.com/repos/github/webook-v5"
          },
          sha: "cfb49ba8557a9d34ae2879b73e13627ff871ff3a"
        },
        head: %{
          ref: "google-maps",
          repo: %{
            id: 171_742_482,
            name: "dotcom-v5",
            url: "https://api.github.com/repos/github/webook-v5"
          },
          sha: "c8e470c2613f799827221bb431a4da0d5f88ae3c"
        },
        id: 277_614_968,
        number: 211,
        url: "https://api.github.com/repos/github/webook-v5/pulls/211"
      }
    ],
    status: "in_progress",
    updated_at: "2019-05-10T03:01:09Z",
    url: "https://api.github.com/repos/github/webook-v5/check-suites/115034341"
  }
end

def comment_factory do
  %{
    author_association: "CONTRIBUTOR",
    body: "This is a commit comment",
    commit_id: "ca5b3024c1cb1368e2ea047d5a130e8cd857b6b1",
    created_at: "2019-05-11T02:26:41Z",
    html_url:
      "https://github.com/github/webhook/commit/ca5b3024c1cb1368e2ea047d5a130e8cd857b6b1#commitcomment-33495294",
    id: 33_495_294,
    line: nil,
    node_id: "MDEzOkNvbW1pdENvbW1lbnQzMzQ5NTI5NA==",
    path: nil,
    position: nil,
    updated_at: "2019-05-11T02:26:41Z",
    url: "https://api.github.com/repos/github/webhook/comments/33495294",
    user: build(:user)
  }
end

def comments_factory do
  %{
    href: "https://api.github.com/repos/github/webook-v5/issues/212/comments"
  }
end

def commit_comment_factory do
  %{
    action: "created",
    comment: build(:comment),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def commits_factory do
  %{
    href: "https://api.github.com/repos/github/webook-v5/pulls/212/commits"
  }
end

def committer_factory do
  %{
    email: "lukeghenco@gmail.com",
    name: "lukeghenco"
  }
end

def config_factory do
  %{
    content_type: "json",
    insecure_ssl: "0",
    url: "https://fis-request-bin.herokuapp.com/1o3e5kw1"
  }
end

def content_reference_factory do
  %{
    id: 17,
    node_id: "MDE2OkNvbnRlbnRSZWZlcmVuY2UxNjA5",
    reference: "https://errors.ai/"
  }
end

def create_factory do
  %{
    description: "Github webhook",
    master_branch: "master",
    organization: build(:organization),
    pusher_type: "user",
    ref: "fnr-941-delinquent",
    ref_type: "branch",
    repository: build(:repository),
    sender: build(:sender)
  }
end

def creator_factory do
  %{
    avatar_url: "https://avatars1.githubusercontent.com/u/21031067?v=4",
    events_url: "https://api.github.com/users/Codertocat/events{/privacy}",
    followers_url: "https://api.github.com/users/Codertocat/followers",
    following_url: "https://api.github.com/users/Codertocat/following{/other_user}",
    gists_url: "https://api.github.com/users/Codertocat/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/Codertocat",
    id: 21_031_067,
    login: "Codertocat",
    node_id: "MDQ6VXNlcjIxMDMxMDY3",
    organizations_url: "https://api.github.com/users/Codertocat/orgs",
    received_events_url: "https://api.github.com/users/Codertocat/received_events",
    repos_url: "https://api.github.com/users/Codertocat/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/Codertocat/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/Codertocat/subscriptions",
    type: "User",
    url: "https://api.github.com/users/Codertocat"
  }
end

def delete_factory do
  %{
    organization: build(:organization),
    pusher_type: "user",
    ref: "fnr-926-stop-writing-to-stage-name",
    ref_type: "branch",
    repository: build(:repository),
    sender: build(:sender)
  }
end

def deploy_key_factory do
  %{
    action: "created",
    key: build(:key),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def deployment_factory do
  %{
    created_at: "2018-05-30T20:18:45Z",
    creator: build(:creator),
    description: nil,
    environment: "production",
    id: 87_972_451,
    node_id: "MDEwOkRlcGxveW1lbnQ4Nzk3MjQ1MQ==",
    payload: build(:payload),
    ref: "master",
    repository_url: "https://api.github.com/repos/Codertocat/Hello-World",
    sha: "a10867b14bb761a232cd80139fbd4c0d33264240",
    statuses_url:
      "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451/statuses",
    task: "deploy",
    updated_at: "2018-05-30T20:18:45Z",
    url: "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451"
  }
end

def deployment_status_factory do
  %{
    created_at: "2018-05-30T20:18:45Z",
    creator: build(:creator),
    deployment_url: "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451",
    description: "",
    id: 131_924_804,
    node_id: "MDE2OkRlcGxveW1lbnRTdGF0dXMxMzE5MjQ4MDQ=",
    repository_url: "https://api.github.com/repos/Codertocat/Hello-World",
    state: "success",
    target_url: "",
    updated_at: "2018-05-30T20:18:45Z",
    url:
      "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451/statuses/131924804"
  }
end

def dismisser_factory do
  %{
    avatar_url: "https://github.com/images/error/octocat_happy.gif",
    events_url: "https://api.github.com/users/octocat/events{/privacy}",
    followers_url: "https://api.github.com/users/octocat/followers",
    following_url: "https://api.github.com/users/octocat/following{/other_user}",
    gists_url: "https://api.github.com/users/octocat/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/octocat",
    id: 1,
    login: "octocat",
    node_id: "MDQ6VXNlcjIxMDMxMDY3",
    organizations_url: "https://api.github.com/users/octocat/orgs",
    received_events_url: "https://api.github.com/users/octocat/received_events",
    repos_url: "https://api.github.com/users/octocat/repos",
    site_admin: true,
    starred_url: "https://api.github.com/users/octocat/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/octocat/subscriptions",
    type: "User",
    url: "https://api.github.com/users/octocat"
  }
end

def error_factory do
  %{
    message: nil
  }
end

def fork_factory do
  %{
    forkee: build(:forkee),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def forkee_factory do
  %{
    statuses_url: "https://api.github.com/repos/github/webhook/statuses/{sha}",
    git_refs_url: "https://api.github.com/repos/github/webhook/git/refs{/sha}",
    issue_comment_url: "https://api.github.com/repos/github/webhook/issues/comments{/number}",
    watchers: 0,
    disabled: false,
    mirror_url: nil,
    languages_url: "https://api.github.com/repos/github/webhook/languages",
    stargazers_count: 0,
    license: nil,
    forks: 0,
    default_branch: "master",
    comments_url: "https://api.github.com/repos/github/webhook/comments{/number}",
    commits_url: "https://api.github.com/repos/github/webhook/commits{/sha}",
    id: 185_905_415,
    clone_url: "https://github.com/github/webhook.git",
    homepage: "https://learn.co",
    stargazers_url: "https://api.github.com/repos/github/webhook/stargazers",
    events_url: "https://api.github.com/repos/github/webhook/events",
    blobs_url: "https://api.github.com/repos/github/webhook/git/blobs{/sha}",
    forks_count: 0,
    pushed_at: "2019-05-09T23:57:40Z",
    public: false,
    git_url: "git://github.com/github/webhook.git",
    hooks_url: "https://api.github.com/repos/github/webhook/hooks",
    owner: build(:owner),
    trees_url: "https://api.github.com/repos/github/webhook/git/trees{/sha}",
    git_commits_url: "https://api.github.com/repos/github/webhook/git/commits{/sha}",
    collaborators_url: "https://api.github.com/repos/github/webhook/collaborators{/collaborator}",
    watchers_count: 0,
    archived: false,
    tags_url: "https://api.github.com/repos/github/webhook/tags",
    merges_url: "https://api.github.com/repos/github/webhook/merges",
    releases_url: "https://api.github.com/repos/github/webhook/releases{/id}",
    subscribers_url: "https://api.github.com/repos/github/webhook/subscribers",
    ssh_url: "git@github.com:github/webhook.git",
    created_at: "2019-05-10T02:34:37Z",
    name: "webhook",
    has_issues: false,
    private: true,
    git_tags_url: "https://api.github.com/repos/github/webhook/git/tags{/sha}",
    has_projects: true,
    archive_url: "https://api.github.com/repos/github/webhook/{archive_format}{/ref}",
    has_wiki: true,
    open_issues_count: 0,
    milestones_url: "https://api.github.com/repos/github/webhook/milestones{/number}",
    forks_url: "https://api.github.com/repos/github/webhook/forks",
    url: "https://api.github.com/repos/github/webhook",
    downloads_url: "https://api.github.com/repos/github/webhook/downloads",
    open_issues: 0,
    keys_url: "https://api.github.com/repos/github/webhook/keys{/key_id}",
    description: "G",
    contents_url: "https://api.github.com/repos/github/webhook/contents/{+path}",
    language: nil,
    contributors_url: "https://api.github.com/repos/github/webhook/contributors",
    deployments_url: "https://api.github.com/repos/github/webhook/deployments",
    pulls_url: "https://api.github.com/repos/github/webhook/pulls{/number}",
    labels_url: "https://api.github.com/repos/github/webhook/labels{/name}",
    html_url: "https://github.com/github/webhook",
    svn_url: "https://github.com/github/webhook",
    issue_events_url: "https://api.github.com/repos/github/webhook/issues/events{/number}",
    notifications_url:
      "https://api.github.com/repos/github/webhook/notifications{?since,all,participating}",
    has_downloads: true,
    node_id: "MDEwOlJlcG9zaXRvcnkxODU5MDU0MTU=",
    compare_url: "https://api.github.com/repos/github/webhook/compare/{base}...{head}",
    full_name: "github/webhook",
    subscription_url: "https://api.github.com/repos/github/webhook/subscription",
    assignees_url: "https://api.github.com/repos/github/webhook/assignees{/user}",
    issues_url: "https://api.github.com/repos/github/webhook/issues{/number}",
    size: 591_819,
    has_pages: false,
    fork: true,
    updated_at: "2019-05-09T21:19:22Z",
    branches_url: "https://api.github.com/repos/github/webhook/branches{/branch}",
    teams_url: "https://api.github.com/repos/github/webhook/teams"
  }
end

def github_app_authorization_factory do
  %{
    action: "revoked",
    sender: build(:sender)
  }
end

def gollum_factory do
  %{
    organization: build(:organization),
    pages: [
      %{
        action: "created",
        html_url: "https://github.com/github/webhook/wiki/Home",
        page_name: "Home",
        sha: "a8b3aee9adb67ba7e14fc8e12b0cbdb17b1b1c87",
        summary: nil,
        title: "Home"
      }
    ],
    repository: build(:repository),
    sender: build(:sender)
  }
end

def head_commit_factory do
  %{
    author: build(:author),
    committer: build(:committer),
    id: "07bc33625245ef452d7f172ddcbb9eb65a6c2da1",
    message: "Add X-Large image size",
    timestamp: "2019-05-10T13:38:04Z",
    tree_id: "9f0f16ca66ffac817bc78c095973b4e518dfe29f"
  }
end

def head_factory do
  %{
    label: "github:remove-div",
    ref: "remove-div",
    repo: build(:repo),
    sha: "368f84f49c6ee5de4f2247d93b224629e81c5aec",
    user: build(:user)
  }
end

def hook_factory do
  %{
    active: true,
    config: build(:config),
    created_at: "2019-05-12T00:13:34Z",
    events: [
      "*"
    ],
    id: 109_067_278,
    name: "web",
    type: "Organization",
    updated_at: "2019-05-12T00:13:34Z"
  }
end

def html_factory do
  %{
    href: "https://github.com/github/webook-v5/pull/212"
  }
end

def installation_factory do
  %{
    id: 371_641,
    node_id: "MDIzOkludGVncmF0aW9uSW5zdGFsbGF0aW9uMzcxNjQx"
  }
end

def installation_repositories_factory do
  %{
    action: "removed",
    installation: build(:installation),
    repositories_added: [],
    repositories_removed: [
      %{
        full_name: "octocat/Hello-World",
        id: 1_296_269,
        name: "Hello-World",
        private: false
      }
    ],
    repository_selection: "selected",
    sender: build(:sender)
  }
end

def issue_comment_factory do
  %{
    action: "created",
    comment: build(:comment),
    issue: build(:issue),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def issue_factory do
  %{
    assignee: nil,
    assignees: [],
    author_association: "CONTRIBUTOR",
    body:
      "When an instructor turns on blogging for an immersive, we generate blog assignments for all students in the batch. This entails creating a blog record and a set of blog posts for each students.\n\nAn important consideration to make is how we enforce or retroactively fix premature scheduling of blog assignments, i.e. if an instructor turned on blogging for an immersive before all students have been admitted to the batch on learn.\n",
    closed_at: "2019-05-10T03:04:16Z",
    comments: 5,
    comments_url: "https://api.github.com/repos/github/webhook/issues/10693/comments",
    created_at: "2016-09-28T20:26:28Z",
    events_url: "https://api.github.com/repos/github/webhook/issues/10693/events",
    html_url: "https://github.com/github/webhook/issues/10693",
    id: 179_879_480,
    labels: [
      %{
        color: "f16d76",
        default: false,
        id: 451_629_567,
        name: "immersive-blogging",
        node_id: "MDU6TGFiZWw0NTE2Mjk1Njc=",
        url: "https://api.github.com/repos/github/webhook/labels/immersive-blogging"
      }
    ],
    labels_url: "https://api.github.com/repos/github/webhook/issues/10693/labels{/name}",
    locked: false,
    milestone: nil,
    node_id: "MDU6SXNzdWUxNzk4Nzk0ODA=",
    number: 10693,
    repository_url: "https://api.github.com/repos/github/webook",
    state: "closed",
    title:
      "As an instructor, I can turn on blogging for an immersive batch from the organizations app.",
    updated_at: "2019-05-10T03:04:16Z",
    url: "https://api.github.com/repos/github/webhook/issues/10693",
    user: build(:user)
  }
end

def issues_factory do
  %{
    action: "assigned",
    assignee: build(:assignee),
    issue: build(:issue),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def key_factory do
  %{
    created_at: "2019-05-10T02:32:58Z",
    id: 34_996_621,
    key: "ssh-rsa NOT REAL",
    read_only: false,
    title: "TEST_KEY",
    url: "https://api.github.com/repos/github/webhook/keys/34996621",
    verified: true
  }
end

def label_factory do
  %{
    color: "d4c5f9",
    default: false,
    id: 1_356_720_145,
    name: "THIS IS A LABEL",
    node_id: "MDU6TGFiZWwxMzU2NzIwMTQ1",
    url: "https://api.github.com/repos/github/webhook/labels/THIS%20IS%20A%20LABEL"
  }
end

def license_factory do
  %{
    key: "mit",
    name: "MIT License",
    node_id: "MDc6TGljZW5zZTEz",
    spdx_id: "MIT",
    url: "https://api.github.com/licenses/mit"
  }
end

def marketplace_purchase_factory do
  %{
    account: build(:account),
    billing_cycle: "monthly",
    free_trial_ends_on: nil,
    next_billing_date: "2017-11-05T00:00:00+00:00",
    on_free_trial: false,
    plan: build(:plan),
    unit_count: 1
  }
end

def member_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/583231?v=4",
    events_url: "https://api.github.com/users/octocat/events{/privacy}",
    followers_url: "https://api.github.com/users/octocat/followers",
    following_url: "https://api.github.com/users/octocat/following{/other_user}",
    gists_url: "https://api.github.com/users/octocat/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/octocat",
    id: 583_231,
    login: "octocat",
    node_id: "MDQ6VXNlcjU4MzIzMQ==",
    organizations_url: "https://api.github.com/users/octocat/orgs",
    received_events_url: "https://api.github.com/users/octocat/received_events",
    repos_url: "https://api.github.com/users/octocat/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/octocat/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/octocat/subscriptions",
    type: "User",
    url: "https://api.github.com/users/octocat"
  }
end

def membership_factory do
  %{
    action: "added",
    member: build(:member),
    organization: build(:organization),
    scope: "team",
    sender: build(:sender),
    team: build(:team)
  }
end

def meta_factory do
  %{
    action: "deleted",
    hook: build(:hook),
    hook_id: 109_067_278,
    organization: build(:organization),
    sender: build(:sender)
  }
end

def milestone_factory do
  %{
    closed_at: nil,
    closed_issues: 0,
    created_at: "2019-05-11T02:47:21Z",
    creator: build(:creator),
    description: "",
    due_on: nil,
    html_url: "https://github.com/github/webhook/milestone/1",
    id: 4_304_255,
    labels_url: "https://api.github.com/repos/github/webhook/milestones/1/labels",
    node_id: "MDk6TWlsZXN0b25lNDMwNDI1NQ==",
    number: 1,
    open_issues: 0,
    state: "open",
    title: "MILESTONE",
    updated_at: "2019-05-11T02:47:21Z",
    url: "https://api.github.com/repos/github/webhook/milestones/1"
  }
end

def org_block_factory do
  %{
    action: "blocked",
    blocked_user: build(:blocked_user),
    organization: build(:organization),
    sender: build(:sender)
  }
end

def organization_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/9919?v=4",
    description: "How people build software.",
    events_url: "https://api.github.com/orgs/github/events",
    hooks_url: "https://api.github.com/orgs/github/hooks",
    id: 9919,
    issues_url: "https://api.github.com/orgs/github/issues",
    login: "github",
    members_url: "https://api.github.com/orgs/github/members{/member}",
    node_id: "MDEyOk9yZ2FuaXphdGlvbjY2MTY5NTY=",
    public_members_url: "https://api.github.com/orgs/github/public_members{/member}",
    repos_url: "https://api.github.com/orgs/github/repos",
    url: "https://api.github.com/orgs/github"
  }
end

def output_factory do
  %{
    annotations_count: 0,
    annotations_url:
      "https://api.github.com/repos/github/webook-v5/check-runs/123764777/annotations",
    summary: "All files already uploaded by a previous deploy with the same commits.",
    text: nil,
    title: "All files already uploaded"
  }
end

def owner_factory do
  %{
    avatar_url: "https://avatars1.githubusercontent.com/u/7892489?v=4",
    events_url: "https://api.github.com/users/netlify/events{/privacy}",
    followers_url: "https://api.github.com/users/netlify/followers",
    following_url: "https://api.github.com/users/netlify/following{/other_user}",
    gists_url: "https://api.github.com/users/netlify/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/netlify",
    id: 7_892_489,
    login: "netlify",
    node_id: "MDEyOk9yZ2FuaXphdGlvbjc4OTI0ODk=",
    organizations_url: "https://api.github.com/users/netlify/orgs",
    received_events_url: "https://api.github.com/users/netlify/received_events",
    repos_url: "https://api.github.com/users/netlify/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/netlify/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/netlify/subscriptions",
    type: "Organization",
    url: "https://api.github.com/users/netlify"
  }
end

def package_version_factory do
  %{
    author: build(:author),
    body:
      "# hello-world-npm\n\nThis is a simple npm package that demonstrates the [Github Package Registry](https://github.com/features/package-registry).\n\n## Installation \n\n`$ npm install`\n\n## Usage\n\n```\nconst myPackage = require('hello-world-node-package');\nmyPackage.helloWorld();\n```\n\n",
    body_html:
      "<h1>hello-world-npm</h1>\n<p>This is a simple npm package that demonstrates the <a href=\"https://github.com/features/package-registry\">Github Package Registry</a>.</p>\n<h2>Installation</h2>\n<p><code>$ npm install</code></p>\n<h2>Usage</h2>\n<pre><code>const myPackage = require('hello-world-node-package');\nmyPackage.helloWorld();\n</code></pre>",
    created_at: "2019-05-09T23:28:29Z",
    draft: false,
    html_url: "https://github.com/Codertocat/hello-world-npm/packages/10696?version=1.0.0",
    id: 24147,
    installation_command: "npm install @Codertocat/@1.0.0",
    manifest:
      "{\"_from\":\"\",\"_id\":\"@codertocat/hello-world-npm@1.0.0\",\"_nodeVersion\":\"10.0.0\",\"_npmUser\":{},\"_npmVersion\":\"5.6.0\",\"_shasum\":\"\",\"author\":{\"name\":\"Codertocat\"},\"bugs\":{\"url\":\"https://github.com/Codertocat/hello-world-npm/issues\"},\"description\":\"A simple npm package to demonstrate GitHub Package Registry\",\"dependencies\":nil,\"devDependencies\":nil,\"peerDependencies\":nil,\"dist\":{\"integrity\":\"sha512-CcChRwjJk+pvGVERbgdjc0w5h6HrOs6jK6OJuHmFcmbnGuhiy9tPMtb4WcSSdvwrktAxf96LsJBNqeIHAEHl3A==\",\"shasum\":\"a413c56a12997ca1b56715ebe81d8c6e0ffe6abb\",\"tarball\":\"http://npm.pkg.github.com/@codertocat/hello-world-npm/-/@codertocat/hello-world-npm-1.0.0.tgz\"},\"gitHead\":\"6c62fb45fe66bfb1ea9a66abc38f6a0cc974292b\",\"homepage\":\"https://github.com/Codertocat/hello-world-npm#readme\",\"license\":\"ISC\",\"main\":\"index.js\",\"name\":\"@codertocat/hello-world-npm\",\"repository\":{\"type\":\"git\",\"url\":\"git+https://github.com/Codertocat/hello-world-npm.git\"},\"scripts\":{\"test\":\"echo \\\"Error: no test specified\\\" \\u0026\\u0026 exit 1\"},\"version\":\"1.0.0\"}",
    metadata: [],
    package_files: [
      %{
        content_type: "application/octet-stream",
        created_at: "2019-05-09T23:28:30Z",
        download_url:
          "https://github-production-registry-package-file-4f11e5.s3.amazonaws.com/185882436/3e6d9b00-7288-11e9-9d72-c0df4c711800?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20190509%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20190509T232830Z&X-Amz-Expires=300&X-Amz-Signature=4b825c49cd93370123a77d0f97a4ebb0d44efb76da46faf1e382f0c668b35819&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=filename%3Dhello-world-npm-1.0.0-npm.tgz&response-content-type=application%2Foctet-stream",
        id: 92167,
        md5: "56ebbd5a5a03367f62d0c732bafd3c66",
        name: "hello-world-npm-1.0.0-npm.tgz",
        sha1: "a413c56a12997ca1b56715ebe81d8c6e0ffe6abb",
        sha256: "ba703915435b6ca2ca666b5d8332db34bf9dc37a198ed70d3a5fa5d08b8415c8",
        size: 654,
        state: "uploaded",
        updated_at: "2019-05-09T23:28:30Z"
      }
    ],
    prerelease: false,
    release: build(:release),
    summary: "A simple npm package to demonstrate GitHub Package Registry",
    tag_name: "1.0.0",
    target_commitish: "master",
    target_oid: "6c62fb45fe66bfb1ea9a66abc38f6a0cc974292b",
    updated_at: "2019-05-09T23:28:30Z",
    version: "1.0.0"
  }
end

def page_build_factory do
  %{
    build: build(:build),
    id: 130_072_952,
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def payload_factory do
  %{}
end

def permission_factory do
  %{
    from: "write"
  }
end

def permissions_factory do
  %{
    checks: "write",
    contents: "read",
    emails: "read",
    metadata: "read",
    pull_requests: "write",
    statuses: "write"
  }
end

def plan_factory do
  %{
    bullets: [
      "Is Basic",
      "Because Basic "
    ],
    description: "Basic Plan",
    has_free_trial: true,
    id: 435,
    monthly_price_in_cents: 1000,
    name: "Basic Plan",
    price_model: "per-unit",
    unit_name: "seat",
    yearly_price_in_cents: 10000
  }
end

def project_card_factory do
  %{
    archived: false,
    column_id: 5_329_256,
    column_url: "https://api.github.com/projects/columns/5329256",
    created_at: "2019-05-12T00:30:01Z",
    creator: build(:creator),
    id: 21_382_411,
    node_id: "MDExOlByb2plY3RDYXJkMjEzODI0MTE=",
    note:
      ":sparkles: **Welcome to GitHub Projects** :sparkles:\nWe're so excited that you've decided to create a new project! Now that you're here, let's make sure you know how to get the most out of GitHub Projects.\n- [x] Create a new project\n- [x] Give your project a name\n- [ ] Press the <kbd>?</kbd> key to see available keyboard shortcuts\n- [ ] Add a new column\n- [ ] Drag and drop this card to the new column\n- [ ] Search for and add issues or PRs to your project\n- [ ] Manage automation on columns\n- [ ] [Archive a card](https://help.github.com/articles/archiving-cards-on-a-project-board/) or archive all cards in a column\n",
    project_url: "https://api.github.com/projects/2621712",
    updated_at: "2019-05-12T00:30:01Z",
    url: "https://api.github.com/projects/columns/cards/21382411"
  }
end

def project_column_factory do
  %{
    cards_url: "https://api.github.com/projects/columns/5329259/cards",
    created_at: "2019-05-12T00:30:40Z",
    id: 5_329_259,
    name: "DUDE",
    node_id: "MDEzOlByb2plY3RDb2x1bW41MzI5MjU5",
    project_url: "https://api.github.com/projects/2621712",
    updated_at: "2019-05-12T00:30:40Z",
    url: "https://api.github.com/projects/columns/5329259"
  }
end

def project_factory do
  %{
    body: "BLAH",
    columns_url: "https://api.github.com/projects/2621712/columns",
    created_at: "2019-05-12T00:30:00Z",
    creator: build(:creator),
    html_url: "https://github.com/PushComedyTheater/PushComedyTheater.github.io/projects/1",
    id: 2_621_712,
    name: "BLAH",
    node_id: "MDc6UHJvamVjdDI2MjE3MTI=",
    number: 1,
    owner_url: "https://api.github.com/repos/PushComedyTheater/PushComedyTheater.github.io",
    state: "open",
    updated_at: "2019-05-12T00:30:00Z",
    url: "https://api.github.com/projects/2621712"
  }
end

def public_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def pull_request_factory do
  %{
    statuses_url:
      "https://api.github.com/repos/github/webook-v5/statuses/368f84f49c6ee5de4f2247d93b224629e81c5aec",
    diff_url: "https://github.com/github/webook-v5/pull/212.diff",
    number: 212,
    title: "Remove unneeded wrapper div from Preamble",
    merge_commit_sha: nil,
    locked: false,
    base: build(:base),
    labels: [],
    commits: 1,
    review_comment_url: "https://api.github.com/repos/github/webook-v5/pulls/comments{/number}",
    comments_url: "https://api.github.com/repos/github/webook-v5/issues/212/comments",
    commits_url: "https://api.github.com/repos/github/webook-v5/pulls/212/commits",
    id: 277_615_553,
    merged_by: nil,
    issue_url: "https://api.github.com/repos/github/webook-v5/issues/212",
    changed_files: 1,
    body:
      "## Submission Task List\r\n\r\n- ESLint\r\n  - [ ] Ensure ESLint passes\r\n- Tests\r\n  - [ ] Ensure passing tests.\r\n  - [ ] Ensure no `console.log/warn/error` or other errors appear in the output. (This can happen despite passing tests.)\r\n- Storybook\r\n  - [ ] Ensure Storybook is up-to-date with the latest changes\r\n  - [ ] Ensure Storybook compiles \r\n- Developer Console\r\n  - [ ] Ensure no errors appear in the developer console.\r\n- PropTypes\r\n  - [ ] Validate appropriate PropTypes.\r\n",
    assignees: [
      %{
        avatar_url: "https://avatars1.githubusercontent.com/u/26691?v=4",
        events_url: "https://api.github.com/users/tmilewski/events{/privacy}",
        followers_url: "https://api.github.com/users/tmilewski/followers",
        following_url: "https://api.github.com/users/tmilewski/following{/other_user}",
        gists_url: "https://api.github.com/users/tmilewski/gists{/gist_id}",
        gravatar_id: "",
        html_url: "https://github.com/tmilewski",
        id: 26691,
        login: "tmilewski",
        node_id: "MDQ6VXNlcjI2Njkx",
        organizations_url: "https://api.github.com/users/tmilewski/orgs",
        received_events_url: "https://api.github.com/users/tmilewski/received_events",
        repos_url: "https://api.github.com/users/tmilewski/repos",
        site_admin: false,
        starred_url: "https://api.github.com/users/tmilewski/starred{/owner}{/repo}",
        subscriptions_url: "https://api.github.com/users/tmilewski/subscriptions",
        type: "User",
        url: "https://api.github.com/users/tmilewski"
      }
    ],
    closed_at: nil,
    user: build(:user),
    rebaseable: nil,
    patch_url: "https://github.com/github/webook-v5/pull/212.patch",
    requested_teams: [
      %{
        description: "The A-Team!",
        html_url: "https://github.com/orgs/github/webhook/team-a-team",
        id: 3_174_210,
        members_url: "https://api.github.com/teams/3174210/members{/member}",
        name: "team-a-team",
        node_id: "MDQ6VGVhbTMxNzQyMTA=",
        permission: "pull",
        privacy: "closed",
        repositories_url: "https://api.github.com/teams/3174210/repos",
        slug: "team-a-team",
        url: "https://api.github.com/teams/3174210"
      }
    ],
    merged_at: nil,
    additions: 2,
    mergeable: nil,
    head: build(:head),
    comments: 0,
    state: "open",
    created_at: "2019-05-10T03:05:15Z",
    requested_reviewers: [],
    maintainer_can_modify: false,
    mergeable_state: "unknown",
    url: "https://api.github.com/repos/github/webook-v5/pulls/212",
    deletions: 2,
    review_comments_url: "https://api.github.com/repos/github/webook-v5/pulls/212/comments",
    draft: false,
    _links: build(:_links),
    html_url: "https://github.com/github/webook-v5/pull/212",
    node_id: "MDExOlB1bGxSZXF1ZXN0Mjc3NjE1NTUz",
    assignee: build(:assignee),
    milestone: nil,
    author_association: "COLLABORATOR",
    review_comments: 0,
    merged: false,
    updated_at: "2019-05-10T03:05:15Z"
  }
end

def pull_request_review_comment_factory do
  %{
    action: "created",
    comment: build(:comment),
    pull_request: build(:pull_request),
    repository: build(:repository),
    sender: build(:sender)
  }
end

def pull_request_review_factory do
  %{
    action: "submitted",
    organization: build(:organization),
    pull_request: build(:pull_request),
    repository: build(:repository),
    review: build(:review),
    sender: build(:sender)
  }
end

def push_factory do
  %{
    after: "80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d",
    base_ref: nil,
    before: "3b277e7e72d29a76fb729c2a48633fbda3d34c07",
    commits: [
      %{
        added: [],
        author: %{
          email: "bobbbygrayson@gmail.com",
          name: "Bobby 'Bobdawg' Grayson",
          username: "notactuallypagemcconnell"
        },
        committer: %{
          email: "bobbbygrayson@gmail.com",
          name: "Bobby 'Bobdawg' Grayson",
          username: "notactuallypagemcconnell"
        },
        distinct: true,
        id: "80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d",
        message: "try split by timings",
        modified: [
          ".circleci/config.yml"
        ],
        removed: [],
        timestamp: "2019-05-10T09:24:53-04:00",
        tree_id: "29f5c32f467c0ad291724352333c11487c5e7ebe",
        url: "https://github.com/github/webhook/commit/80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d"
      }
    ],
    compare: "https://github.com/github/webhook/compare/3b277e7e72d2...80a91bcbf98c",
    created: false,
    deleted: false,
    forced: false,
    head_commit: build(:head_commit),
    organization: build(:organization),
    pusher: build(:pusher),
    ref: "refs/heads/parallel-testing-ci",
    repository: build(:repository),
    sender: build(:sender)
  }
end

def pusher_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/22348?v=4",
    events_url: "https://api.github.com/users/veverkap/events{/privacy}",
    followers_url: "https://api.github.com/users/veverkap/followers",
    following_url: "https://api.github.com/users/veverkap/following{/other_user}",
    gists_url: "https://api.github.com/users/veverkap/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/veverkap",
    id: 22348,
    login: "veverkap",
    node_id: "MDQ6VXNlcjIyMzQ4",
    organizations_url: "https://api.github.com/users/veverkap/orgs",
    received_events_url: "https://api.github.com/users/veverkap/received_events",
    repos_url: "https://api.github.com/users/veverkap/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/veverkap/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/veverkap/subscriptions",
    type: "User",
    url: "https://api.github.com/users/veverkap"
  }
end

def registry_factory do
  %{
    about_url: "https://help.github.com/about-github-package-registry",
    name: "GitHub npm registry",
    type: "npm",
    url: "https://npm.registry.github.com/@Codertocat",
    vendor: "GitHub Inc"
  }
end

def registry_package_factory do
  %{
    created_at: "2019-05-09T23:28:29Z",
    html_url: "https://github.com/Codertocat/hello-world-npm/packages/10696",
    id: 10696,
    name: "hello-world-npm",
    owner: build(:owner),
    package_type: "npm",
    package_version: build(:package_version),
    registry: build(:registry),
    updated_at: "2019-05-09T23:28:29Z"
  }
end

def release_factory do
  %{
    author: build(:author),
    created_at: "2019-05-09T23:24:40Z",
    draft: false,
    html_url: "https://github.com/Codertocat/hello-world-npm/releases/tag/1.0.0",
    id: 17_264_286,
    name: "1.0.0",
    prerelease: false,
    published_at: "2019-05-09T23:26:59Z",
    tag_name: "1.0.0",
    target_commitish: "master",
    url: "https://api.github.com/repos/Codertocat/hello-world-npm/releases/17264286"
  }
end

def repo_factory do
  %{
    statuses_url: "https://api.github.com/repos/github/webook-v5/statuses/{sha}",
    git_refs_url: "https://api.github.com/repos/github/webook-v5/git/refs{/sha}",
    issue_comment_url: "https://api.github.com/repos/github/webook-v5/issues/comments{/number}",
    watchers: 3,
    disabled: false,
    mirror_url: nil,
    languages_url: "https://api.github.com/repos/github/webook-v5/languages",
    stargazers_count: 3,
    license: build(:license),
    forks: 0,
    default_branch: "develop",
    comments_url: "https://api.github.com/repos/github/webook-v5/comments{/number}",
    commits_url: "https://api.github.com/repos/github/webook-v5/commits{/sha}",
    id: 171_742_482,
    clone_url: "https://github.com/github/webook-v5.git",
    homepage: "https://fs5.netlify.com/career-courses/coding-bootcamp/denver/",
    stargazers_url: "https://api.github.com/repos/github/webook-v5/stargazers",
    events_url: "https://api.github.com/repos/github/webook-v5/events",
    blobs_url: "https://api.github.com/repos/github/webook-v5/git/blobs{/sha}",
    forks_count: 0,
    pushed_at: "2019-05-10T03:04:50Z",
    git_url: "git://github.com/github/webook-v5.git",
    hooks_url: "https://api.github.com/repos/github/webook-v5/hooks",
    owner: build(:owner),
    trees_url: "https://api.github.com/repos/github/webook-v5/git/trees{/sha}",
    git_commits_url: "https://api.github.com/repos/github/webook-v5/git/commits{/sha}",
    collaborators_url:
      "https://api.github.com/repos/github/webook-v5/collaborators{/collaborator}",
    watchers_count: 3,
    archived: false,
    tags_url: "https://api.github.com/repos/github/webook-v5/tags",
    merges_url: "https://api.github.com/repos/github/webook-v5/merges",
    releases_url: "https://api.github.com/repos/github/webook-v5/releases{/id}",
    subscribers_url: "https://api.github.com/repos/github/webook-v5/subscribers",
    ssh_url: "git@github.com:github/webook-v5.git",
    created_at: "2019-02-20T20:17:02Z",
    name: "dotcom-v5",
    has_issues: true,
    private: true,
    git_tags_url: "https://api.github.com/repos/github/webook-v5/git/tags{/sha}",
    has_projects: true,
    archive_url: "https://api.github.com/repos/github/webook-v5/{archive_format}{/ref}",
    has_wiki: true,
    open_issues_count: 8,
    milestones_url: "https://api.github.com/repos/github/webook-v5/milestones{/number}",
    forks_url: "https://api.github.com/repos/github/webook-v5/forks",
    url: "https://api.github.com/repos/github/webook-v5",
    downloads_url: "https://api.github.com/repos/github/webook-v5/downloads",
    open_issues: 8,
    keys_url: "https://api.github.com/repos/github/webook-v5/keys{/key_id}",
    description: "Password: a-team",
    contents_url: "https://api.github.com/repos/github/webook-v5/contents/{+path}",
    language: "JavaScript",
    contributors_url: "https://api.github.com/repos/github/webook-v5/contributors",
    deployments_url: "https://api.github.com/repos/github/webook-v5/deployments",
    pulls_url: "https://api.github.com/repos/github/webook-v5/pulls{/number}",
    labels_url: "https://api.github.com/repos/github/webook-v5/labels{/name}",
    html_url: "https://github.com/github/webook-v5",
    svn_url: "https://github.com/github/webook-v5",
    issue_events_url: "https://api.github.com/repos/github/webook-v5/issues/events{/number}",
    notifications_url:
      "https://api.github.com/repos/github/webook-v5/notifications{?since,all,participating}",
    has_downloads: true,
    node_id: "MDEwOlJlcG9zaXRvcnkxNzE3NDI0ODI=",
    compare_url: "https://api.github.com/repos/github/webook-v5/compare/{base}...{head}",
    full_name: "github/webook-v5",
    subscription_url: "https://api.github.com/repos/github/webook-v5/subscription",
    assignees_url: "https://api.github.com/repos/github/webook-v5/assignees{/user}",
    issues_url: "https://api.github.com/repos/github/webook-v5/issues{/number}",
    size: 2497,
    has_pages: false,
    fork: false,
    updated_at: "2019-05-08T19:33:06Z",
    branches_url: "https://api.github.com/repos/github/webook-v5/branches{/branch}",
    teams_url: "https://api.github.com/repos/github/webook-v5/teams"
  }
end

def repository_factory do
  %{
    statuses_url: "https://api.github.com/repos/Codertocat/hello-world/statuses/{sha}",
    git_refs_url: "https://api.github.com/repos/Codertocat/hello-world/git/refs{/sha}",
    issue_comment_url:
      "https://api.github.com/repos/Codertocat/hello-world/issues/comments{/number}",
    watchers: 0,
    mirror_url: nil,
    languages_url: "https://api.github.com/repos/Codertocat/hello-world/languages",
    stargazers_count: 0,
    license: nil,
    forks: 0,
    default_branch: "master",
    comments_url: "https://api.github.com/repos/Codertocat/hello-world/comments{/number}",
    commits_url: "https://api.github.com/repos/Codertocat/hello-world/commits{/sha}",
    id: 145_551_601,
    clone_url: "https://github.com/Codertocat/hello-world.git",
    homepage: nil,
    stargazers_url: "https://api.github.com/repos/Codertocat/hello-world/stargazers",
    events_url: "https://api.github.com/repos/Codertocat/hello-world/events",
    blobs_url: "https://api.github.com/repos/Codertocat/hello-world/git/blobs{/sha}",
    forks_count: 0,
    pushed_at: "2018-08-21T10:59:00Z",
    git_url: "git://github.com/Codertocat/hello-world.git",
    hooks_url: "https://api.github.com/repos/Codertocat/hello-world/hooks",
    owner: build(:owner),
    trees_url: "https://api.github.com/repos/Codertocat/hello-world/git/trees{/sha}",
    git_commits_url: "https://api.github.com/repos/Codertocat/hello-world/git/commits{/sha}",
    collaborators_url:
      "https://api.github.com/repos/Codertocat/hello-world/collaborators{/collaborator}",
    watchers_count: 0,
    archived: false,
    tags_url: "https://api.github.com/repos/Codertocat/hello-world/tags",
    merges_url: "https://api.github.com/repos/Codertocat/hello-world/merges",
    releases_url: "https://api.github.com/repos/Codertocat/hello-world/releases{/id}",
    subscribers_url: "https://api.github.com/repos/Codertocat/hello-world/subscribers",
    ssh_url: "git@github.com:Codertocat/hello-world.git",
    created_at: "2018-08-21T10:58:58Z",
    name: "hello-world",
    has_issues: true,
    private: true,
    git_tags_url: "https://api.github.com/repos/Codertocat/hello-world/git/tags{/sha}",
    has_projects: true,
    archive_url: "https://api.github.com/repos/Codertocat/hello-world/{archive_format}{/ref}",
    has_wiki: true,
    open_issues_count: 2,
    milestones_url: "https://api.github.com/repos/Codertocat/hello-world/milestones{/number}",
    forks_url: "https://api.github.com/repos/Codertocat/hello-world/forks",
    url: "https://api.github.com/repos/Codertocat/hello-world",
    downloads_url: "https://api.github.com/repos/Codertocat/hello-world/downloads",
    open_issues: 2,
    keys_url: "https://api.github.com/repos/Codertocat/hello-world/keys{/key_id}",
    description: nil,
    contents_url: "https://api.github.com/repos/Codertocat/hello-world/contents/{+path}",
    language: nil,
    contributors_url: "https://api.github.com/repos/Codertocat/hello-world/contributors",
    deployments_url: "https://api.github.com/repos/Codertocat/hello-world/deployments",
    pulls_url: "https://api.github.com/repos/Codertocat/hello-world/pulls{/number}",
    labels_url: "https://api.github.com/repos/Codertocat/hello-world/labels{/name}",
    html_url: "https://github.com/Codertocat/hello-world",
    svn_url: "https://github.com/Codertocat/hello-world",
    issue_events_url:
      "https://api.github.com/repos/Codertocat/hello-world/issues/events{/number}",
    notifications_url:
      "https://api.github.com/repos/Codertocat/hello-world/notifications{?since,all,participating}",
    has_downloads: true,
    node_id: "MDEwOlJlcG9zaXRvcnkxNDU1NTE2MDE=",
    compare_url: "https://api.github.com/repos/Codertocat/hello-world/compare/{base}...{head}",
    full_name: "octocoders/hello-world",
    subscription_url: "https://api.github.com/repos/Codertocat/hello-world/subscription",
    assignees_url: "https://api.github.com/repos/Codertocat/hello-world/assignees{/user}",
    issues_url: "https://api.github.com/repos/Codertocat/hello-world/issues{/number}",
    size: 0,
    has_pages: false,
    fork: false,
    updated_at: "2018-08-21T10:59:01Z",
    branches_url: "https://api.github.com/repos/Codertocat/hello-world/branches{/branch}",
    teams_url: "https://api.github.com/repos/Codertocat/hello-world/teams"
  }
end

def repository_import_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender),
    status: "success"
  }
end

def repository_vulnerability_alert_factory do
  %{
    action: "dismiss",
    alert: build(:alert)
  }
end

def review_comment_factory do
  %{
    href: "https://api.github.com/repos/github/webook-v5/pulls/comments{/number}"
  }
end

def review_comments_factory do
  %{
    href: "https://api.github.com/repos/github/webook-v5/pulls/212/comments"
  }
end

def review_factory do
  %{
    _links: build(:_links),
    author_association: "CONTRIBUTOR",
    body: "Looks great, easy to read and grok, and well tested. Awesome work!",
    commit_id: "c8e470c2613f799827221bb431a4da0d5f88ae3c",
    html_url: "https://github.com/github/webook-v5/pull/211#pullrequestreview-236095528",
    id: 236_095_528,
    node_id: "MDE3OlB1bGxSZXF1ZXN0UmV2aWV3MjM2MDk1NTI4",
    pull_request_url: "https://api.github.com/repos/github/webook-v5/pulls/211",
    state: "approved",
    submitted_at: "2019-05-10T13:12:16Z",
    user: build(:user)
  }
end

def security_advisory_factory do
  %{
    description:
      "django.contrib.auth.forms.AuthenticationForm in Django 2.0 before 2.0.2, and 1.11.8 and 1.11.9, allows remote attackers to obtain potentially sensitive information by leveraging data exposure from the confirm_login_allowed() method, as demonstrated by discovering whether a user account is inactive.",
    ghsa_id: "GHSA-rf4j-j272-fj86",
    identifiers: [
      %{
        type: "GHSA",
        value: "GHSA-rf4j-j272-fj86"
      },
      %{
        type: "CVE",
        value: "CVE-2018-6188"
      }
    ],
    published_at: "2018-10-03T21:13:54Z",
    references: [
      %{
        url: "https://nvd.nist.gov/vuln/detail/CVE-2018-6188"
      }
    ],
    severity: "moderate",
    summary: "Moderate severity vulnerability that affects django",
    updated_at: "2018-10-03T21:13:54Z",
    vulnerabilities: [
      %{
        first_patched_version: %{
          identifier: "2.0.2"
        },
        package: %{
          ecosystem: "pip",
          name: "django"
        },
        severity: "moderate",
        vulnerable_version_range: ">= 2.0.0, < 2.0.2"
      },
      %{
        first_patched_version: %{
          identifier: "1.11.10"
        },
        package: %{
          ecosystem: "pip",
          name: "django"
        },
        severity: "moderate",
        vulnerable_version_range: ">= 1.11.8, < 1.11.10"
      }
    ],
    withdrawn_at: nil
  }
end

def self_factory do
  %{
    href: "https://api.github.com/repos/github/webook-v5/pulls/212"
  }
end

def sender_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/22348?v=4",
    events_url: "https://api.github.com/users/veverkap/events{/privacy}",
    followers_url: "https://api.github.com/users/veverkap/followers",
    following_url: "https://api.github.com/users/veverkap/following{/other_user}",
    gists_url: "https://api.github.com/users/veverkap/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/veverkap",
    id: 22348,
    login: "veverkap",
    node_id: "MDQ6VXNlcjIyMzQ4",
    organizations_url: "https://api.github.com/users/veverkap/orgs",
    received_events_url: "https://api.github.com/users/veverkap/received_events",
    repos_url: "https://api.github.com/users/veverkap/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/veverkap/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/veverkap/subscriptions",
    type: "User",
    url: "https://api.github.com/users/veverkap"
  }
end

def star_factory do
  %{
    action: "created",
    repository: build(:repository),
    sender: build(:sender),
    starred_at: "2019-04-17T00:11:35Z"
  }
end

def status_factory do
  %{
    hook: build(:hook),
    hook_id: 108_607_898,
    organization: build(:organization),
    sender: build(:sender),
    zen: "Practicality beats purity."
  }
end

def statuses_factory do
  %{
    href:
      "https://api.github.com/repos/github/webook-v5/statuses/368f84f49c6ee5de4f2247d93b224629e81c5aec"
  }
end

def team_add_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender),
    team: build(:team)
  }
end

def team_factory do
  %{
    description: "",
    html_url: "https://github.com/orgs/github/webhook/view-ironboard",
    id: 2_737_290,
    members_url: "https://api.github.com/teams/2737290/members{/member}",
    name: "View Ironboard",
    node_id: "MDQ6VGVhbTI3MzcyOTA=",
    permission: "pull",
    privacy: "closed",
    repositories_url: "https://api.github.com/teams/2737290/repos",
    slug: "view-ironboard",
    url: "https://api.github.com/teams/2737290"
  }
end

def user_factory do
  %{
    avatar_url: "https://avatars3.githubusercontent.com/u/22348?v=4",
    events_url: "https://api.github.com/users/veverkap/events{/privacy}",
    followers_url: "https://api.github.com/users/veverkap/followers",
    following_url: "https://api.github.com/users/veverkap/following{/other_user}",
    gists_url: "https://api.github.com/users/veverkap/gists{/gist_id}",
    gravatar_id: "",
    html_url: "https://github.com/veverkap",
    id: 22348,
    login: "veverkap",
    node_id: "MDQ6VXNlcjIyMzQ4",
    organizations_url: "https://api.github.com/users/veverkap/orgs",
    received_events_url: "https://api.github.com/users/veverkap/received_events",
    repos_url: "https://api.github.com/users/veverkap/repos",
    site_admin: false,
    starred_url: "https://api.github.com/users/veverkap/starred{/owner}{/repo}",
    subscriptions_url: "https://api.github.com/users/veverkap/subscriptions",
    type: "User",
    url: "https://api.github.com/users/veverkap"
  }
end

def watch_factory do
  %{
    action: "started",
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end

end
