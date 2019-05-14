def delete_factory do
  %{
    organization: build(:organization),
    pusher_type: "user",
    ref: "fnr-926-stop-writing-to-stage-name",
    ref_type: "branch",
    repository: build(:repository),
    sender: build(:sender)
  }
end
