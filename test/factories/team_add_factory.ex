def team_add_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender),
    team: build(:team)
  }
end
