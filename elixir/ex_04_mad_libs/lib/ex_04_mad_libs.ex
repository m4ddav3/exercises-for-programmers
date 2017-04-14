defmodule Ex04MadLibs do
  @moduledoc """
  Documentation for Ex04MadLibs.
  """

  import Inputs, only: [clean_input: 1]

  @doc """
  Hello world.

  ## Examples

      iex> Ex04MadLibs.hello
      :world

  """
  def hello do
    :world
  end

  def main(_) do
    noun      = clean_input("Enter a noun:")
    verb      = clean_input("Enter a verb:")
    adjective = clean_input("Enter an adjective:")
    adverb    = clean_input("Enter an adverb:")
    IO.puts("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!")
  end
end
