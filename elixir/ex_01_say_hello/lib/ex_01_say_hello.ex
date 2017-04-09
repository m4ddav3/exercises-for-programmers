defmodule Ex01SayHello do
  @moduledoc """
  Documentation for Ex01SayHello.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Ex01SayHello.hello
      :world

  """
  def hello do
    :world
  end


  @doc """
  Prompt for the user's name, then print a greeting
  using that name

  """
  def prompt_and_greet do
    name = IO.gets "What is your name? "
    name = String.trim_trailing(name, "\n")
    IO.puts "Hello #{name}, nice to meet you!"
  end
end
