defmodule Joken.Mixfile do
  use Mix.Project

  def project do
    [app: :joken,
     version: "1.1.0",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps,
     consolidate_protocols: Mix.env != :test]
  end

  def application do
    [applications: [:logger, :crypto, :jose]]
  end

  defp deps do
    [
      {:jose, "~> 1.6"},
      {:plug, "~> 1.0", optional: true},
      {:poison, "~> 1.5 or ~> 2.0", optional: true},
      {:earmark, "~> 0.1", only: :docs},
      {:ex_doc, "~> 0.10", only: :docs},
      {:jsx, "~> 2.0", only: :test},
      {:benchfella, "~> 0.2", only: :test}
    ]
  end

  defp description do
    """
    JWT Library for Elixir
    """
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*", "CHANGELOG*"],
      maintainers: ["Bryan Joseph", "Victor Nascimento"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/bryanjos/joken",
               "Docs" => "http://hexdocs.pm/joken"}
    ]
  end
end
