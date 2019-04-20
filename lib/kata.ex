defmodule Kata do
  @moduledoc """
  Documentation for Kata.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Kata.hello()
      :world

  """
  def hello do
    :world
  end

  def accum(someString) do
    String.split(someString, "")
    |> Enum.filter(fn letter -> letter !== "" end)
    |> Enum.with_index(1)
    |> Enum.map(fn({letter, index}) -> String.duplicate(letter, index) |> String.capitalize end)
    |> Enum.join("-")
  end
end
