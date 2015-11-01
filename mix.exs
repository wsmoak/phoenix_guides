defmodule PhoenixGuides.Mixfile do
  use Mix.Project

  def project do
    [app: :"Phoenix Guides",
     version: "1.0.4-dev",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     docs: [
#          logo: "images/phoenix-logo.png",
          main: "extra-up-and-running",
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
