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
