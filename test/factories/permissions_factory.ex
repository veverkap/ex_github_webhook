def permissions_factory do
  %{
    checks: "write",
    contents: "read",
    emails: "read",
    metadata: "read",
    pull_requests: "write",
    statuses: "write"
  }
end
