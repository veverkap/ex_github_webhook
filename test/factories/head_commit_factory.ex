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