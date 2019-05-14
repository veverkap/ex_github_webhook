def check_suite_factory do
  %{
    after: "c8e470c2613f799827221bb431a4da0d5f88ae3c",
    app: build(:app),
    before: "ad8d68dca7525377d6a4597e1a991b77794f6caa",
    conclusion: null,
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
