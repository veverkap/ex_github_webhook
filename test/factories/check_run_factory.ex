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
