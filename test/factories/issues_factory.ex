def issues_factory do
  %{
    action: "assigned",
    assignee: build(:assignee),
    issue: build(:issue),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
