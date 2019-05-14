def deployment_factory do
  %{
    created_at: "2018-05-30T20:18:45Z",
    creator: build(:creator),
    description: null,
    environment: "production",
    id: 87_972_451,
    node_id: "MDEwOkRlcGxveW1lbnQ4Nzk3MjQ1MQ==",
    payload: build(:payload),
    ref: "master",
    repository_url: "https://api.github.com/repos/Codertocat/Hello-World",
    sha: "a10867b14bb761a232cd80139fbd4c0d33264240",
    statuses_url:
      "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451/statuses",
    task: "deploy",
    updated_at: "2018-05-30T20:18:45Z",
    url: "https://api.github.com/repos/Codertocat/Hello-World/deployments/87972451"
  }
end
