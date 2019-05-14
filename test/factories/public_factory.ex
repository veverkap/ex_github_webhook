def public_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
