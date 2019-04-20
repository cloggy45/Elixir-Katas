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
  @spec accum(String.t) :: number
  def accum(someString) do
    String.split(someString, "")
    |> Enum.filter(fn letter -> letter !== "" end)
    |> Enum.with_index(1)
    |> Enum.map(fn({letter, index}) -> String.duplicate(letter, index) |> String.capitalize end)
    |> Enum.join("-")
  end

  @doc """
  https://www.codewars.com/kata/53dc54212259ed3d4f00071c

  ## Examples

      iex> Kata.sum [1, 5.2, 4, 0, -1]
      9.2

  """
  @spec sum(list) :: number
  def sum(someList) do
    Enum.reduce(someList, fn(cur, acc) -> cur + acc end)
  end
end
