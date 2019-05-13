defmodule ExGithubWebhook do
  import Plug.Conn
  require Logger

  def init(options) do
    options
  end

  def call(conn, options) do
    # headers = conn.req_headers
    # {:ok, payload, _conn} = read_body(conn)
    # # result = Jason.decode!(payload)
    # # IO.inspect(result)
    # conn |> send_resp(200, "OK")
    Path.wildcard("#{File.cwd!()}/test/fixtures/**/*.json")
    |> Enum.map(fn original_file ->
      folder =
        Path.dirname(original_file)
        |> String.replace("/Users/Patrick/Code/personal/ex_github_webhook/test/fixtures/", "")

      contents = File.read!(original_file)
      item = Jason.decode!(contents)
      new_item = process_map(item, folder)
    end)
  end

  def process_map(map, module) do
    factory_name = "/Users/Patrick/Code/personal/ex_github_webhook/test/factories/#{module}.ex"

    if !File.exists?(factory_name) do
      File.write!(factory_name, Jason.encode!(map))
    end

    Map.keys(map)
    |> Enum.reduce(%{}, fn key, obj ->
      value =
        case is_map(map[key]) do
          true ->
            process_map(map[key], key)

          false ->
            map[key]
        end

      obj = Map.put(obj, key, value)

      obj
    end)
  end
end
