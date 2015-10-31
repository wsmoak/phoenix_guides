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
            "A_up_and_running.md",
            "B_adding_pages.md",
            "C_routing.md",
            "D_controllers.md",
            "DD_Plug.md",
            "E_views.md",
            "F_templates.md",
            "G_channels.md",
            "H_ecto_models.md",
            "testing/A_introduction.md"
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
