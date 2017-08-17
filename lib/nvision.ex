defmodule Nvision do
  @moduledoc """
  Documentation for Nvision.
  """

  @doc """
  Start app.

  ## Examples

      iex> Nvision.check

  """
  def check do
    IO.puts "starting"
    ret = HTTPoison.get! "http://traininfo.jreast.co.jp/train_info/shinetsu.aspx"
    %HTTPoison.Response{body: body} = ret
    [status] = Floki.attribute(body, "th:fl-contains('越後線') + td.acess_i img", "alt")
    IO.puts status
  end
end
