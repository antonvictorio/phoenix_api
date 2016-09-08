use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "shrouded-coast-35402.herokuapp.com", port: 443],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  cache_static_manifest: "priv/static/manifest.json"

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info
