use Mix.Config

config :miniphx, MiniPhxWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000]

config :phoenix, :json_library, Jason
