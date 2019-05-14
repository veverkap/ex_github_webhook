def pull_request_review_comment_factory do
  %{
    action: "created",
    comment: build(:comment),
    pull_request: build(:pull_request),
    repository: build(:repository),
    sender: build(:sender)
  }
end
