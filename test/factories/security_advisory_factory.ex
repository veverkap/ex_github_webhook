def security_advisory_factory do
  %{
    description:
      "django.contrib.auth.forms.AuthenticationForm in Django 2.0 before 2.0.2, and 1.11.8 and 1.11.9, allows remote attackers to obtain potentially sensitive information by leveraging data exposure from the confirm_login_allowed() method, as demonstrated by discovering whether a user account is inactive.",
    ghsa_id: "GHSA-rf4j-j272-fj86",
    identifiers: [
      %{
        type: "GHSA",
        value: "GHSA-rf4j-j272-fj86"
      },
      %{
        type: "CVE",
        value: "CVE-2018-6188"
      }
    ],
    published_at: "2018-10-03T21:13:54Z",
    references: [
      %{
        url: "https://nvd.nist.gov/vuln/detail/CVE-2018-6188"
      }
    ],
    severity: "moderate",
    summary: "Moderate severity vulnerability that affects django",
    updated_at: "2018-10-03T21:13:54Z",
    vulnerabilities: [
      %{
        first_patched_version: %{
          identifier: "2.0.2"
        },
        package: %{
          ecosystem: "pip",
          name: "django"
        },
        severity: "moderate",
        vulnerable_version_range: ">= 2.0.0, < 2.0.2"
      },
      %{
        first_patched_version: %{
          identifier: "1.11.10"
        },
        package: %{
          ecosystem: "pip",
          name: "django"
        },
        severity: "moderate",
        vulnerable_version_range: ">= 1.11.8, < 1.11.10"
      }
    ],
    withdrawn_at: null
  }
end
