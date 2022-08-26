# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :calendlex,
  ecto_repos: [Calendlex.Repo],
  generators: [binary_id: true],
  owner: %{
    name: "WideAnchor",
    time_zone: "Asia/Kolkata",
    day_start: 9,
    day_end: 19
  },
  basic_auth: [username: "admin", password: "admin"]


# In your config/config.exs file
config :calendlex, ecto_repos: [Calendlex.Repo]

config :calendlex, Calendlex.Repo,
  database: "d9c0q57l6jn44a",
  username: "xswyhfdrwmrhks",
  password: "73e0bade1f9deae9693216fea6897cabb6fc36651dda27532abaab2efef67e06",
  hostname: "ec2-34-227-135-211.compute-1.amazonaws.com",
  port: "5433"

# Configures the endpoint
config :calendlex, CalendlexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vVFRQLAHht7Z2QF5xMscsyDyQznZe39nC3HPCQqkwQL30sAC1Lv63XgflKGK/Bhf",
  render_errors: [view: CalendlexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Calendlex.PubSub,
  live_view: [signing_salt: "umJi+RxF"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.12.18",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
