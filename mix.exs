defmodule Jsont.MixProject do
  use Mix.Project

  def project do
    [
      app: :jsont,
      version: "0.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      description: "A blazingly fast JSON library",
      source_url: "https://github.com/devsnek/jsont",
      package: package(),
      deps: deps()
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      files: [
        "lib",
        "LICENSE",
        "mix.exs",
        "README.md",
        "native/jsont_nif/src",
        "native/jsont_nif/Cargo.toml",
        "native/jsont_nif/Cargo.lock"
      ],
      links: %{"GitHub" => "https://github.com/devsnek/jsont"}
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.34.0", runtime: false},
      {:stream_data, "~> 0.5", only: [:dev, :test], runtime: false},
      {:snapshy, "~> 0.4", only: [:dev, :test], runtime: false}
    ]
  end
end
