defmodule Ex05SimpleMath do
  @moduledoc """
  Documentation for Ex05SimpleMath.
  """

  @doc """
  Get an input, and ensure it is numeric
  """
  def get_numeric_input(prompt) do
    val = IO.gets(prompt <> " ") |> String.trim_trailing("\n")
    if String.match?(val, ~r/^[0-9]+\z/) do
      String.to_integer(val)
    else
      get_numeric_input(prompt)
    end
  end

  @doc """
  Prompt for two numbers, then print the:
  - sum
  - difference
  - product
  - quotient
  """
  def main(_) do
    first  = get_numeric_input("What is the first number?")
    second = get_numeric_input("What is the second number?")

    IO.puts("#{first} + #{second} = #{first + second}")
    IO.puts("#{first} - #{second} = #{first - second}")
    IO.puts("#{first} * #{second} = #{first * second}")
    IO.puts("#{first} / #{second} = #{first / second}")
  end
end
