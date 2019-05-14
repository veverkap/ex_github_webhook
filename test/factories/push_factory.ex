def push_factory do
  %{
    after: "80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d",
    base_ref: null,
    before: "3b277e7e72d29a76fb729c2a48633fbda3d34c07",
    commits: [
      %{
        added: [],
        author: %{
          email: "bobbbygrayson@gmail.com",
          name: "Bobby 'Bobdawg' Grayson",
          username: "notactuallypagemcconnell"
        },
        committer: %{
          email: "bobbbygrayson@gmail.com",
          name: "Bobby 'Bobdawg' Grayson",
          username: "notactuallypagemcconnell"
        },
        distinct: true,
        id: "80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d",
        message: "try split by timings",
        modified: [
          ".circleci/config.yml"
        ],
        removed: [],
        timestamp: "2019-05-10T09:24:53-04:00",
        tree_id: "29f5c32f467c0ad291724352333c11487c5e7ebe",
        url: "https://github.com/github/webhook/commit/80a91bcbf98c0aaf82ad958a8090c6b8828fdf1d"
      }
    ],
    compare: "https://github.com/github/webhook/compare/3b277e7e72d2...80a91bcbf98c",
    created: false,
    deleted: false,
    forced: false,
    head_commit: build(:head_commit),
    organization: build(:organization),
    pusher: build(:pusher),
    ref: "refs/heads/parallel-testing-ci",
    repository: build(:repository),
    sender: build(:sender)
  }
end
