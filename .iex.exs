import_if_available(Ecto.Query)

blue_ansi = IO.ANSI.blue()
green_ansi = IO.ANSI.green()
reset_ansi = IO.ANSI.reset()
white_background = IO.ANSI.white_background()

elixir_icon = ""

IEx.configure(
  continuation_prompt: "    ",
  default_prompt:
    [
      :yellow,
      "%counter. ",
      :magenta,
      elixir_icon,
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string(),
  colors: [
    enabled: true,
    syntax_colors: [
      number: :magenta,
      atom: :cyan,
      string: :green,
      boolean: :magenta,
      nil: :red
    ],
    eval_result: [:green, :bright],
    eval_error: [[:red, :bright, "   "]],
    eval_info: [:yellow, :bright],
    eval_warning: [:yellow, :bright, "  "]
  ],
  inspect: [
    limit: :infinity,
    charlists: :as_lists,
    pretty: true,
    binaries: :as_strings,
    printable_limit: :infinity
  ]
)

[
  ["󱄮", "󱁰", "󱁱", " "],
  [
    "Hee Hee Hee!",
    "Time for Research",
    "Bombs Away",
    "Let's Get Volatile",
    "Prime Your Potions",
    "For Science",
    "Boom!",
    "Ready?!",
    "Let's Experiment"
  ]
]
|> Enum.map(&Enum.random/1)
|> then(fn
  [symbol, phrase] ->
    "#{green_ansi} #{symbol} #{phrase} #{symbol} #{reset_ansi}"
end)
|> IO.puts()

Application.put_env(:elixir, :ansi_enabled, true)
