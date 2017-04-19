defmodule Ex07AreaOfARectangularRoom do
  @moduledoc """
  Documentation for Ex07AreaOfARectangularRoom.
  """

  def numeric(val) do
    if String.match?(val, ~r/\./) do
      String.to_float(val)
    else
      String.to_integer(val)
    end
  end

  def get_input(prompt) do
    val = IO.gets(prompt <> " ") |> String.trim_trailing

    case String.match?(val, ~r/^[0-9]+(\.[0-9]+)?\z/) do
      true  -> numeric(val)
      false -> get_input(prompt)
    end
  end

  def calc_area_in_feet(length, width) do
    length * width
  end

  def calc_area_in_meters(length, width) do
    calc_area_in_feet(length, width) * 0.09290304
  end

  def print_dimensions(length, width) do
    IO.puts("You entered dimensions of #{length} feet by #{width} feet.")
  end

  def print_area(area_feet, area_meters) do
    IO.puts("The area is")
    IO.puts("#{area_feet} square feet")
    IO.puts("#{area_meters} square meters")
  end

  @doc """
  Hello world.

  ## Examples

      iex> Ex07AreaOfARectangularRoom.hello
      :world

  """
  def main(_) do
    length = get_input("What is the length of the room in feet?")
    width  = get_input("What is the width of the room in feet?")

    area_feet   = calc_area_in_feet(length, width)
    area_meters = calc_area_in_meters(length, width)

    print_dimensions(length, width)
    print_area(area_feet, area_meters)
  end
end
