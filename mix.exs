defmodule Author.MixProject do
  use Mix.Project

  def project do
    [
      app: :author,
      version: "0.0.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Author.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:type_check, "~> 0.8.0"},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
