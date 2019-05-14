def github_app_authorization_factory do
  %{
    action: "revoked",
    sender: build(:sender)
  }
end
