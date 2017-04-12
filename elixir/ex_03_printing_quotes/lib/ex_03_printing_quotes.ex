defmodule Ex03PrintingQuotes do
  @moduledoc """
  Documentation for Ex03PrintingQuotes.
  """

  @doc """
  Prompt for an input, and return the string free of it's trailing newline
  """
  def get_input (text) do
    IO.gets(text <> " ") |> String.trim_trailing("\n")
  end


  @doc """
  Ask for a quote and who said, then print it out as a quote

  ## Examples

      iex> Ex03PrintingQuotes.main
      What is the quote? moooo!
      Who said it? The Cow
      The Cow says, "moooo!"

  """
  def main(_) do
    quote_text = get_input("What is the quote?")
    who        = get_input("Who said it?")

    IO.puts who <> " says, \"" <> quote_text <> "\""
  end
end
