use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "https://vast-sea-45830.herokuapp.com/", port: 443],
  secret_key_base: System.get_env("85dqpam5EiZz3pTb+PzxcST5m2CBZtQautMzS9mrtIZ6wYsL2x8JOs9vYT9d2htY"),
  cache_static_manifest: "priv/static/manifest.json"

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("postgres://bxouuucjmhlhab:W8UErdh_IOUqjhxdXjq7vApN-H@ec2-174-129-223-35.compute-1.amazonaws.com:5432/de3e8aprn5k39d"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info