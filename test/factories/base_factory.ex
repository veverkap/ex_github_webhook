def base_factory do
  %{
    label: "github:contentful",
    ref: "contentful",
    repo: build(:repo),
    sha: "cfb49ba8557a9d34ae2879b73e13627ff871ff3a",
    user: build(:user)
  }
end
