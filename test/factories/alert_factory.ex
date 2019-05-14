def alert_factory do
  %{
    affected_package_name: "many_versioned_gem",
    affected_range: "0.2.0",
    dismiss_reason: "No bandwidth to fix this",
    dismissed_at: "2017-10-25T00:00:00+00:00",
    dismisser: build(:dismisser),
    external_identifier: "CVE-2018-3728",
    external_reference: "https://nvd.nist.gov/vuln/detail/CVE-2018-3728",
    fixed_in: "0.2.5",
    id: 7_649_605
  }
end
