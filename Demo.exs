defmodule Kata do
  def accum(someString) do
    String.split(someString, "")
    |> Enum.filter(fn letter -> letter !== "" end)
    |> Enum.with_index(1)
    |> Enum.map(fn({letter, index}) -> String.duplicate(letter, index) end)
    |> Enum.join("-")
  end
end
