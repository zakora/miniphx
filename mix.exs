defmodule MiniPhx.MixProject do
  use Mix.Project
  
  def project do
    [
      app: :miniphx,
      version: "0.1.0",
      deps: [
        {:jason, "~> 1.0"},
	{:plug_cowboy, "~> 2.0"},
	{:phoenix, "~> 1.4"}
      ]
    ]
  end
  
  def application do
    [
      mod: {MiniPhx.Application, []}
    ]
  end
end
