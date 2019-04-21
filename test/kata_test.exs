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

  test "should convert input to leet speak" do
    assert Kata.translate("LEET") == "1337"
    assert Kata.translate("CODEWARS") == "(0D3W@R$"
    assert Kata.translate("HELLO WORLD") == "#3110 W0R1D"
    assert Kata.translate("LOREM IPSUM DOLOR SIT AMET") == "10R3M !P$UM D010R $!7 @M37"
    assert Kata.translate("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG") == "7#3 QU!(K 8R0WN F0X JUMP$ 0V3R 7#3 1@2Y D06"
  end
end
