defmodule ElixirtutTest do
  use ExUnit.Case
  doctest Elixirtut

  test "greets the world" do
    assert Elixirtut.hello() == :world
  end
end
