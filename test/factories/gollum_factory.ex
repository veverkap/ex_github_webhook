def gollum_factory do
  %{
    organization: build(:organization),
    pages: [
      %{
        action: "created",
        html_url: "https://github.com/github/webhook/wiki/Home",
        page_name: "Home",
        sha: "a8b3aee9adb67ba7e14fc8e12b0cbdb17b1b1c87",
        summary: null,
        title: "Home"
      }
    ],
    repository: build(:repository),
    sender: build(:sender)
  }
end
