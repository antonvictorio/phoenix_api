use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "radiant-crag-90533.herokuapp.com", port: 443],
  secret_key_base: System.get_env("wCqvfKIjdFkevp9rg54USl/Cwgq3pxe4n1sZDp8lb5Bfbfcap7TE1kCkpBtIn7fx"),
  cache_static_manifest: "priv/static/manifest.json"

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  #url: System.get_env("postgres://bxouuucjmhlhab:W8UErdh_IOUqjhxdXjq7vApN-H@ec2-174-129-223-35.compute-1.amazonaws.com:5432/de3e8aprn5k39d"),
  url: System.get_env("postgres://rwwgmfcqmkholh:Hr5QmfLgwIWSk6A6KXKcp7894u@ec2-54-243-54-56.compute-1.amazonaws.com:5432/d1gmrhcqif73it"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info
