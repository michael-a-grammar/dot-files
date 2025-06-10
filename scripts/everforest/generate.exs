Mix.install([
  {:catppuccin, github: "catppuccin/elixir", tag: "v0.1.2"},
  :jason,
  {:mustache, "~> 0.5.0"}
])

defmodule Theme do
  @palettes %{
    dark: "dark",
    light: "light",
    hard: "hard",
    medium: "medium",
    soft: "soft"
  }

  def palette(:dark = palette), do: get_palette(palette)
  def palette(:light = palette), do: get_palette(palette)

  def palette(:dark = palette, :hard = sub_palette), do: get_palette(palette, sub_palette)
  def palette(:dark = palette, :medium = sub_palette), do: get_palette(palette, sub_palette)
  def palette(:dark = palette, :soft = sub_palette), do: get_palette(palette, sub_palette)

  def palette(:light = palette, :hard = sub_palette), do: get_palette(palette, sub_palette)
  def palette(:light = palette, :medium = sub_palette), do: get_palette(palette, sub_palette)
  def palette(:light = palette, :soft = sub_palette), do: get_palette(palette, sub_palette)

  defp get_palette(palette) do
    decode_json([@palettes[palette], "foreground.json"])
  end

  defp get_palette(palette, sub_palette) do
    decode_json([@palettes[palette], "background", "#{@palettes[sub_palette]}.json"])
  end

  defp decode_json(paths) do
    ["theme"] ++ paths
    |> Path.join()
    |> File.read!()
    |> Jason.decode()
  end
end

[:dark, :light]
|> Enum.map(fn palette ->
  foreground = Theme.palette(palette)

  backgrounds = 
    [:hard,:medium, :soft]
    |> Enum.map(&(Theme.palette(palette, &1)))

  {foreground, backgrounds}
end)
|> then(fn result ->
  IO.inspect(result, label: "Result")
end)
