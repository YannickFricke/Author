defmodule Author.MixProject do
  use Mix.Project

  def project do
    [
      app: :author,
      version: "0.0.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs related stuff
      name: "Author",
      source_url: "https://github.com/YannickFricke/Author",
      homepage_url: "https://github.com/YannickFricke/Author",
      docs: [
        # The main page in the docs
        main: "Author",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Author.Application, []}
    ]
  end

  defp deps do
    [
      {:type_check, "~> 0.8.0"},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end
end
