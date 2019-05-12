defmodule ExGithubWebhookTest do
  use ExUnit.Case
  use Plug.Test

  test "greets the world" do
    Path.wildcard("#{File.cwd!()}/test/fixtures/**/*.json")
    |> Enum.each(fn original_file ->
      contents = File.read!(original_file)
      item = Jason.decode!(contents)

      File.write!(original_file, Jason.encode!(item, pretty: true))
    end)
  end
end
