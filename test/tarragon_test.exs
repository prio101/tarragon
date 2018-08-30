defmodule TarragonTest do
  use ExUnit.Case
  doctest Tarragon

  test "greets the world" do
    assert Tarragon.hello() == :world
  end
end
