# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :freejobs,
  ecto_repos: [Freejobs.Repo]

# Configures the endpoint
config :freejobs, FreejobsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hbhDcJ/FCj6Jx0YqoVDbzN/e9wZEL1mJQRHiUthRDwg6GV/eDHJXKU8hpu0UMj+g",
  render_errors: [view: FreejobsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Freejobs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
