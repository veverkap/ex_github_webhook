def repository_import_factory do
  %{
    organization: build(:organization),
    repository: build(:repository),
    sender: build(:sender),
    status: "success"
  }
end
