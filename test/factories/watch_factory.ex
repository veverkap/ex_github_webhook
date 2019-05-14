def watch_factory do
  %{
    action: "started",
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
