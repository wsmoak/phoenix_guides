defmodule PhoenixGuides.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_guides,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     docs: [
          extras: [
            "Up And Running.md",
            "Adding Pages.md",
            "Routing.md",
            "Controllers.md",
            "Plug.md",
            "Views.md",
            "Templates.md",
            "Channels.md",
            "Ecto Models.md",
            "testing/Testing Introduction.md",
            "testing/Testing Models.md",
            "testing/Testing Channels.md"
          ]
      ]
    ]
  end

  defp deps do
    [
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.10", only: :dev}
    ]
  end
end
