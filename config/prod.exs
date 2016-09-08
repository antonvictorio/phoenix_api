use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "https://shrouded-coast-35402.herokuapp.com", port: 443],
  secret_key_base: System.get_env("x3n4ZoldJiBkcVfnUrmwoaPzAFs0RKFWJ01yHdGTO/MdcVS5OhwaNNXp6ev0prhq"),
  cache_static_manifest: "priv/static/manifest.json"

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("postgres://dswcdsaledomsn:yFmu9RUbqd6z_y-rWkJfSb6s_y@ec2-54-235-195-226.compute-1.amazonaws.com:5432/d4868gctlf9084"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info
