def membership_factory do
  %{
    action: "added",
    member: build(:member),
    organization: build(:organization),
    scope: "team",
    sender: build(:sender),
    team: build(:team)
  }
end
