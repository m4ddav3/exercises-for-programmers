defmodule Inputs do
  def clean_input(prompt) do
    IO.gets(prompt) |> String.trim_trailing("\n")
  end
end
