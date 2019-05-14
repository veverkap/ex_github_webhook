defmodule ExGithubWebhook.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_github_webhook,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  # This makes sure your factory and any other modules in test/support are compiled
  # when in the test environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

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
      {:floki, "~> 0.21.0", only: [:dev, :test]},
      {:ex_machina, "~> 2.3", only: [:dev, :test]}
    ]
  end
end
