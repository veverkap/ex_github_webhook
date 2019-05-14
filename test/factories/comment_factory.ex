def comment_factory do
  %{
    author_association: "CONTRIBUTOR",
    body: "This is a commit comment",
    commit_id: "ca5b3024c1cb1368e2ea047d5a130e8cd857b6b1",
    created_at: "2019-05-11T02:26:41Z",
    html_url:
      "https://github.com/github/webhook/commit/ca5b3024c1cb1368e2ea047d5a130e8cd857b6b1#commitcomment-33495294",
    id: 33_495_294,
    line: null,
    node_id: "MDEzOkNvbW1pdENvbW1lbnQzMzQ5NTI5NA==",
    path: null,
    position: null,
    updated_at: "2019-05-11T02:26:41Z",
    url: "https://api.github.com/repos/github/webhook/comments/33495294",
    user: build(:user)
  }
end
