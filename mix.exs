defmodule PhoenixGuides.Mixfile do
  use Mix.Project

  @version "1.3.0-dev"

  def project do
    [app: :phoenix_guides,
     name: "Phoenix Guides",
     version: @version,
     elixir: "~> 1.3",
     deps: deps(),
     docs: [source_ref: "v#{@version}",
            main: "overview",
            logo: "styling/Phoenix_files/phoenix-logo-white.png",
            assets: "images",
            extra_section: "GUIDES",
            extras: extras(),
            homepage_url: "http://www.phoenixframework.org",
            description: """
            Phoenix Guides - Preview - The guides are published from the phoenixframework/phoenix project, not separately, however this config exists to make it easier to preview changes to the guides without also building the framework source API docs.
            """]]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, "~> 0.14", only: :docs}]
  end

  defp extras do
    # http://stackoverflow.com/questions/29681310/elixir-script-load-all-modules-in-folder-recursivelly
    System.cwd() |> Path.join("docs/**/*.md") |> Path.wildcard()
  end
end
