defmodule Ex02CountingCharacters do
  @moduledoc """
  Documentation for Ex02CountingCharacters.
  """

  @doc """

  Prompts for input then gives you the length

  ## Examples

      iex> Ex02CountingCharacters.main
      What is the input string? Foo
      Foo has 3 characters.

  """
  def main(_) do
    string = IO.gets("What is the input string? ")
      |> String.trim_trailing("\n")

    IO.puts("#{string} has #{String.length(string)} characters.")
  end
end
