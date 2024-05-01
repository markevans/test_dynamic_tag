import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_dynamic_tag, TestDynamicTagWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "eKLHfrLJQcbeyRx7tmFcfclolCQfnLt/h3MGxv7URx+hzVmy6UguQEDcptXa6eUD",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true
