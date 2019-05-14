def installation_repositories_factory do
  %{
    action: "removed",
    installation: build(:installation),
    repositories_added: [],
    repositories_removed: [
      %{
        full_name: "octocat/Hello-World",
        id: 1_296_269,
        name: "Hello-World",
        private: false
      }
    ],
    repository_selection: "selected",
    sender: build(:sender)
  }
end
