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
