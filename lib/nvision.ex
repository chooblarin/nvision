defmodule Nvision do
  @moduledoc """
  Documentation for Nvision.
  """

  def check do
    IO.puts "Checking..."
    ret = HTTPoison.get! "http://traininfo.jreast.co.jp/train_info/shinetsu.aspx"
    %HTTPoison.Response{body: body} = ret
    status = parse_status body
    IO.puts status
  end

  def parse_status(body) do
    [status] = Floki.attribute(body, "th:fl-contains('越後線') + td.acess_i img", "alt")
    status
  end
end
