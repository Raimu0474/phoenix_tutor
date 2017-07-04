# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_example,
  ecto_repos: [PhoenixExample.Repo]

# Configures the endpoint
config :phoenix_example, PhoenixExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B7c4UtlWWklynOYMizaSBrHAuDNSBh9vLT3SEWGn9QSHC9tRsxqxUTug+MEowoPY",
  render_errors: [view: PhoenixExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
