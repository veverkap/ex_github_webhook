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
