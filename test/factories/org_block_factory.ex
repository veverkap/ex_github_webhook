def org_block_factory do
  %{
    action: "blocked",
    blocked_user: build(:blocked_user),
    organization: build(:organization),
    sender: build(:sender)
  }
end
