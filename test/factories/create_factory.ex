def create_factory do
  %{
    description: "Github webhook",
    master_branch: "master",
    organization: build(:organization),
    pusher_type: "user",
    ref: "fnr-941-delinquent",
    ref_type: "branch",
    repository: build(:repository),
    sender: build(:sender)
  }
end
