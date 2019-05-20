defmodule Mix.Tasks.GenerateTests do
  use Mix.Task

  def run(_) do
    IO.inspect("DUDE")
    IO.puts("CLEANING EXISTING FOLDERS")
    File.rm_rf!("#{File.cwd!()}/test/factories")

    File.mkdir!("#{File.cwd!()}/test/factories")
    IO.puts("PARSING JSON FILES")

    Path.wildcard("#{File.cwd!()}/test/fixtures/**/*.json")
    |> Enum.map(fn original_file ->
      folder =
        Path.dirname(original_file)
        |> String.replace("#{File.cwd!()}/test/fixtures/", "")

      contents = File.read!(original_file)
      item = Jason.decode!(contents)
      process_map(item, "#{folder}_event")
    end)

    IO.puts("GENERATED FACTORIES")
    IO.puts("COMBINING FACTORIES")

    code =
      Path.wildcard("#{File.cwd!()}/test/factories/*.ex")
      |> Enum.map(fn file ->
        File.read!(file)
      end)
      |> Enum.sort()
      |> Enum.join("\n")

    newcode = """
    defmodule ExGithubWebhook.Factory do
    use ExMachina

    #{String.replace(code, "null", "nil")}
    end
    """

    File.write!("#{File.cwd!()}/test/support/factory.ex", newcode)

    Path.wildcard("#{File.cwd!()}/test/fixtures/**/*.json")
    |> Enum.map(fn original_file ->
      folder =
        Path.dirname(original_file)
        |> String.replace("#{File.cwd!()}/test/fixtures/", "")

      IO.puts("""
      test "runs #{folder}" do
        item = build(:#{folder}_event)

        conn =
          conn(:post, "/gh-webhook", Jason.encode!(item))
          |> put_req_header("content-type", "application/json")
          |> put_req_header("x-hub-signature", "sha1=wrong_hexdigest")
          |> put_req_header("x-github-deliver", "97f3c0e2-7660-11e9-81f7-5c19ca1af1e4")
          |> put_req_header("x-github-event", "#{folder}")
          |> ExGithubWebhook.call([])

        assert conn.status == 200
      end
      """)
    end)
  end

  def process_map(map, module) do
    factory_name = "#{File.cwd!()}/test/factories/#{module}_factory.ex"

    child_content =
      Map.keys(map)
      |> Enum.reduce(%{}, fn key, obj ->
        value =
          case is_map(map[key]) do
            true ->
              process_map(map[key], key)
              "build(:#{key})"

            false ->
              map[key]
          end

        Map.put(obj, key, value)
      end)

    child_content =
      Regex.replace(
        ~r/"build\(:([a-z_]*)\)"/,
        inspect(child_content, limit: :infinity),
        "build(:\\1)"
      )

    content = """
      def #{module}_factory do
        #{child_content}
    end
    """

    if !File.exists?(factory_name) do
      File.write!(factory_name, content)
    end
  end
end
