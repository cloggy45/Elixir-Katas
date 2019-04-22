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

  @spec translate(String.t) :: String.t
  def translate(someWord) do
    alphabet = %{
  A: '@',
  B: '8',
  C: '(',
  D: 'D',
  E: '3',
  F: 'F',
  G: '6',
  H: '#',
  I: '!',
  J: 'J',
  K: 'K',
  L: '1',
  M: 'M',
  N: 'N',
  O: '0',
  P: 'P',
  Q: 'Q',
  R: 'R',
  S: '$',
  T: '7',
  U: 'U',
  V: 'V',
  W: 'W',
  X: 'X',
  Y: 'Y',
  Z: '2'
}
    wordLength = String.length(someWord) + 1
    String.split(someWord, "")
    |> Enum.with_index
    |> Enum.reject(fn({_, val}) -> val == 0 or val == wordLength end)
    |> Enum.map(fn({key, _}) -> alphabet[String.to_atom(key)]  end)
    |> Enum.map(fn letter -> if is_nil(letter) do " " else letter end end)
    |> Enum.join
  end
end
