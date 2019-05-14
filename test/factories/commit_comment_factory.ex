def commit_comment_factory do
  %{
    action: "created",
    comment: build(:comment),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
