defmodule Ex08PizzaParty do
  @moduledoc """
  Write a program to evenly divide pizzas. Prompt for the
  number of people, the number of pizzas, and the number of
  slices per pizza. Ensure that the number of pieces comes
  out even. Display the number of pieces of pizza each person
  should get. If there are leftover pieces, show the number
  of leftover pieces.
  """

  def prompt_integer(str) do
    val = IO.gets(str <> " ") |> String.trim_trailing

    if String.match?(val, ~r/[1-9][0-9]*/) do
      String.to_integer(val)
    else
      prompt_integer(str)
    end
  end


  def prompt_even_integer(str) do
    val = prompt_integer(str)
    if rem(val, 2) == 0 do
      val
    else
      prompt_even_integer(str)
    end
  end


  def main(_) do
    people = prompt_integer("How many people?")
    pizzas = prompt_integer("How many pizzas?")
    slices = prompt_integer("How many slices per pizza?")

    total_slices = pizzas * slices
    slices_per_person = div(total_slices, people)
    leftover_slices = rem(total_slices, people)

    IO.puts("Each person gets #{slices_per_person} pieces of pizza.")
    IO.puts("There are #{leftover_slices} leftover pieces.")
  end
end
