ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Pulitz.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Pulitz.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Pulitz.Repo)

