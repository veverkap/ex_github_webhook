def deploy_key_factory do
  %{
    action: "created",
    key: build(:key),
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
