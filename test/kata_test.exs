defmodule KataTest do
  use ExUnit.Case
  doctest Kata

  test "accum should generate the correct output" do
    assert Kata.accum("abcd") == "A-Bb-Ccc-Dddd"
    assert Kata.accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
    assert Kata.accum("cwAt") == "C-Ww-Aaa-Tttt"
  end

  test "should add all elements in a list together" do
    assert Kata.sum([1, 5.2, 4, 0, -1]) == 9.2
  end
end
