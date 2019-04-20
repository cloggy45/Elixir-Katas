defmodule Kata do
  @moduledoc """
  Documentation for Kata.
  """

  @doc """
  https://www.codewars.com/kata/5667e8f4e3f572a8f2000039


  ## Examples

      iex> Kata.accum "abcd"
      "A-Bb-Ccc-Dddd"

  """
  def accum(someString) do
    String.split(someString, "")
    |> Enum.filter(fn letter -> letter !== "" end)
    |> Enum.with_index(1)
    |> Enum.map(fn({letter, index}) -> String.duplicate(letter, index) |> String.capitalize end)
    |> Enum.join("-")
  end
end
