defmodule Ex06RetirementCalculator do
  @moduledoc """
  Documentation for Ex06RetirementCalculator.
  """

  def get_numeric(prompt) do
    val = IO.gets(prompt <> " ") |> String.trim

    if String.match?(val, ~r/^[0-9]+\z/) do
      String.to_integer(val)
    else
      get_numeric(prompt)
    end
  end

  def main(_) do
    age = get_numeric("What is your current age?")
    retirement_age = get_numeric("At what age would you like to retire?")

    current_year = Date.utc_today().year
    years_left = retirement_age - age

    IO.puts("You have #{years_left} left until you can retire.")
    IO.puts("It's #{current_year}, so you can retire in #{current_year + years_left}.")
  end
end
