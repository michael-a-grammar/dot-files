import_if_available(Ecto.Query)

IEx.configure(colors: [enabled: true])
IEx.configure(colors: [eval_result: [:cyan, :bright]])

blue_ansi = IO.ANSI.blue()
green_ansi = IO.ANSI.green()
reset_ansi = IO.ANSI.reset()
white_background = IO.ANSI.white_background()

elixir_icon = ""

IEx.configure(
  continuation_prompt: "    ",
  default_prompt:
    [
      "\e[G",
      :yellow,
      "%counter. ",
      :magenta,
      elixir_icon,
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string(),
  colors: [
    syntax_colors: [
      number: :magenta,
      atom: :cyan,
      string: :green,
      boolean: :magenta,
      nil: :red
    ],
    eval_result: [:green, :bright],
    eval_error: [[:red, :bright, "  \n"]],
    eval_info: [:yellow, :bright],
    eval_warning: [:yellow, :bright, " "]
  ],
  inspect: [
    limit: :infinity,
    charlists: :as_lists,
    pretty: true,
    binaries: :as_strings,
    printable_limit: :infinity
  ]
)

greeting_text = green_ansi <> " ❄ Prime Your Potions ❄" <> reset_ansi

IO.puts(greeting_text)

Application.put_env(:elixir, :ansi_enabled, true)
