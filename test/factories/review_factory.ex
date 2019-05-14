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
