# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tutorlly,
  ecto_repos: [Tutorlly.Repo]

# Configures the endpoint
config :tutorlly, TutorllyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sKJios7SHqsfEhIjcMYxwZpu2JTx8XQUid3cAAKEzvfI6U7GOadXu9ZhFy5g1aHq",
  render_errors: [view: TutorllyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tutorlly.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
