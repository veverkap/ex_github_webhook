def meta_factory do
  %{
    action: "deleted",
    hook: build(:hook),
    hook_id: 109_067_278,
    organization: build(:organization),
    sender: build(:sender)
  }
end
