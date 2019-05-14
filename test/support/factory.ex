# test/support/factory.ex
defmodule ExGithubWebhook.Factory do
  # without Ecto
  use ExMachina
  use ExGithubWebhook.SenderFactory
end
