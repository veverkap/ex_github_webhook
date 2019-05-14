def fork_factory do
  %{
    forkee: build(:forkee),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
