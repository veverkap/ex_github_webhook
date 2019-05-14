def page_build_factory do
  %{
    build: build(:build),
    id: 130_072_952,
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender)
  }
end
