defmodule DoubleQuery.Repo do
  use Ecto.Repo,
    otp_app: :double_query,
    adapter: Ecto.Adapters.Postgres
end
