import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :double_query, DoubleQuery.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "double_query_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :double_query, DoubleQueryWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "MgaYwTqygbhy0PO8hjL9/XbQ7fKErV7B9Rghv8CNt8vPamkYTG3al17uKK3gULUT",
  server: false

# In test we don't send emails.
config :double_query, DoubleQuery.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
