defmodule Nvision.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nvision,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13"},
      {:floki, "~> 0.18.0"}
    ]
  end
end
