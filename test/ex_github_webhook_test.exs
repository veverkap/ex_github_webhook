defmodule ExGithubWebhookTest do
  use ExUnit.Case
  use Plug.Test

  test "greets the world" do
    ExGithubWebhook.call(nil, nil)
  end
end
