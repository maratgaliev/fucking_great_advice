defmodule FuckingGreatAdvice.Mixfile do
  use Mix.Project

  def project do
    [app: :fucking_great_advice,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     docs: [main: "FuckingGreatAdvice",
          extras: ["README.md"]],
     deps: deps()]
  end

  def application do
    [applications: [:hackney]]
  end

  defp description do
    """
    http://fucking-great-advice.ru API wrapper for Elixir.
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      keywords: ["Elixir", "Fucking", "Great", "Advice"],
      maintainers: ["Marat Galiev"],
      links: %{"GitHub" => "https://github.com/maratgaliev/fucking_great_advice"}
    ]
  end

  defp deps do
    [
      { :httpoison, "~> 0.10.0" },
      { :poison, "~> 3.0" },
      { :ex_doc, "~> 0.13.1", only: :dev, runtime: false },
    ]
  end
end
