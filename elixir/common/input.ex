defmodule Inputs do
  def clean_input(prompt) do
    IO.gets(prompt) |> String.trim_trailing()
  end
end
