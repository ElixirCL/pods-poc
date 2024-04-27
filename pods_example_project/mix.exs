defmodule PodsExampleProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :pods_example_project,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PodsExampleProject.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # bencode
      {:bento, "~> 1.0"},
      # json
      {:jason, "~> 1.4"},
      {:transit, git: "https://github.com/ElixirCL/transit-erlang.git"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:pods_core, path: "../pods_core"},
      {:pods_process_manager, path: "../pods_process_manager"},
      {:pod_lispyclouds_sqlite, path: "../pod_lispyclouds_sqlite"},
      {:pod_babashka_sqlite3, path: "../pod_babashka_sqlite3"}
    ]
  end
end
