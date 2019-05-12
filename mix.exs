defmodule ExGithubWebhook.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_github_webhook,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~>1.4"},
      {:jason, "~> 1.1"},
      {:mojito, "~> 0.2.2", only: [:dev, :test]},
      {:floki, "~> 0.21.0", only: [:dev, :test]}
    ]
  end
end
