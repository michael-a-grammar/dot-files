defmodule DotFiles.Symlinks do
  @home_path Path.expand("~")

  @config_path System.get_env("XDG_CONFIG_HOME", Path.join(@home_path, ".config"))

  @dot_files_path Path.dirname(__ENV__.file)

  @config_directories [
                        "bat/themes",
                        "helix/themes",
                        "kitty/themes",
                        "lazydocker",
                        "lazygit",
                        "superfile"
                      ]
                      |> Enum.map(&Path.join(@config_path, &1))

  @dot_files [
    "bat",
    "helix",
    "kitty",
    "lazydocker",
    "lazygit",
    "starship",
    "superfile",
    {".iex.exs", :home},
    {"fish", :platform_dependant},
    %{
      name: "bat",
      path: "themes",
      pattern: ~r[Catppuccin Frappe|Latte|Macchiato|Mocha\.tmTheme]
    },
    %{
      name: "fish",
      path: "functions",
      pattern: ~r[.*\.fish]
    },
    %{
      name: "helix",
      path: "themes",
      pattern: ~r[default/catppuccin_frappe|latte|macchiato|mocha\.toml]
    },
    %{
      name: "helix",
      path: "themes",
      pattern: ~r[default/catppuccin_frappe|latte|macchiato|mocha\.toml]
    }
  ]

  @dot_file_pattern ~r[\.conf|\.toml|\.yml|config]

  def ensure_config_directories do
    @config_directories
    |> Enum.each(&File.mkdir_p!/1)
  end

  defp platform do
    case :os.type() do
      {:unix, :linux} ->
        :linux

      {:unix, :darwin} ->
        :macos

      _ ->
        :error
    end
  end

  def create_symlinks do
    @dot_files
    |> Enum.map(&symlink/1)
  end

  defp symlink(dot_file_name) when is_binary(dot_file_name) do
    exisiting =
      @dot_files_path
      |> Path.join(dot_file_name)
      |> File.ls!()
      |> Enum.find(:error, &Regex.match?(@dot_file_pattern, &1))
      |> then(&Path.join([@dot_files_path, dot_file_name, &1]))

    new = ""
  end

  defp symlink(_), do: :ok

  defp symlink(exisiting, new) when is_binary(exisiting) and is_binary(new) do
    File.ln_s!(exisiting, new)
  end
end

alias DotFiles.Symlinks

[
  Symlinks.ensure_config_directories(),
  Symlinks.create_symlinks()
]
|> Enum.each(&IO.inspect("#{inspect(&1)}", label: "Result"))
