import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :speelbook_fateev, SpeelbookFateev.Repo,
  username: "drovosek",
  password: "123",
  hostname: "localhost",
  database: "speelbook_fateev_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :speelbook_fateev, SpeelbookFateevWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "1NSn7We0GCyuVAvJwW/INgQFx9RM0or6uofHmSnstL3UU41mn88VRLfYqd4q3YU8",
  server: false

# In test we don't send emails.
config :speelbook_fateev, SpeelbookFateev.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
