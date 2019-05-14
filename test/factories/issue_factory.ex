def issue_factory do
  %{
    assignee: null,
    assignees: [],
    author_association: "CONTRIBUTOR",
    body:
      "When an instructor turns on blogging for an immersive, we generate blog assignments for all students in the batch. This entails creating a blog record and a set of blog posts for each students.\n\nAn important consideration to make is how we enforce or retroactively fix premature scheduling of blog assignments, i.e. if an instructor turned on blogging for an immersive before all students have been admitted to the batch on learn.\n",
    closed_at: "2019-05-10T03:04:16Z",
    comments: 5,
    comments_url: "https://api.github.com/repos/github/webhook/issues/10693/comments",
    created_at: "2016-09-28T20:26:28Z",
    events_url: "https://api.github.com/repos/github/webhook/issues/10693/events",
    html_url: "https://github.com/github/webhook/issues/10693",
    id: 179_879_480,
    labels: [
      %{
        color: "f16d76",
        default: false,
        id: 451_629_567,
        name: "immersive-blogging",
        node_id: "MDU6TGFiZWw0NTE2Mjk1Njc=",
        url: "https://api.github.com/repos/github/webhook/labels/immersive-blogging"
      }
    ],
    labels_url: "https://api.github.com/repos/github/webhook/issues/10693/labels{/name}",
    locked: false,
    milestone: null,
    node_id: "MDU6SXNzdWUxNzk4Nzk0ODA=",
    number: 10693,
    repository_url: "https://api.github.com/repos/github/webook",
    state: "closed",
    title:
      "As an instructor, I can turn on blogging for an immersive batch from the organizations app.",
    updated_at: "2019-05-10T03:04:16Z",
    url: "https://api.github.com/repos/github/webhook/issues/10693",
    user: build(:user)
  }
end
