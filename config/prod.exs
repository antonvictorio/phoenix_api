use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "https://nameless-falls-45512.herokuapp.com/", port: 443],
  secret_key_base: System.get_env("ePgYNZ6CYWSkhN/YmR10Q78orMwTq5jDCmeg23VFHTlF2AMc8MkoF1GOMGfG8HNd"),
  cache_static_manifest: "priv/static/manifest.json"

config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  #url: System.get_env("postgres://bxouuucjmhlhab:W8UErdh_IOUqjhxdXjq7vApN-H@ec2-174-129-223-35.compute-1.amazonaws.com:5432/de3e8aprn5k39d"),
  url: System.get_env("postgres://yrhfashceavqbn:I8g21lwIhlVUawyYtZUP7DUnwc@ec2-54-163-239-12.compute-1.amazonaws.com:5432/d310gr91tcc3lo"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info
