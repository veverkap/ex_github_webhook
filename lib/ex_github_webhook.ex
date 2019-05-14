defmodule ExGithubWebhook do
  import Plug.Conn
  require Logger

  def init(options) do
    options
  end

  def call(conn, options) do
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
    raise "FUCK"

    Path.wildcard("#{File.cwd!()}/test/fixtures/**/*.json")
    |> Enum.map(fn original_file ->
      folder =
        Path.dirname(original_file)
        |> String.replace("/Users/Patrick/Code/personal/ex_github_webhook/test/fixtures/", "")

      contents = File.read!(original_file)
      item = Jason.decode!(contents)
      IO.puts("item = build(:#{folder})")
      IO.puts("IO.puts(item)\n")
      # new_item = process_map(item, folder)
    end)
  end

  def process_map(map, module) do
    factory_name =
      "/Users/Patrick/Code/personal/ex_github_webhook/test/factories/#{module}_factory.ex"

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

    content = """
      def #{module}_factory do
        %#{Jason.encode!(child_content, pretty: true)}
      end
    """

    if !File.exists?(factory_name) do
      File.write!(factory_name, content)
    end
  end
end
