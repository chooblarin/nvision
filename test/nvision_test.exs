defmodule NvisionTest do
  use ExUnit.Case
  doctest Nvision

  test "parse train status" do
    {:ok, body} = File.read("test/data/train_info.html")
    status = Nvision.parse_status body
    assert "平常運転" == status
  end
end
