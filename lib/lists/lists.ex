defmodule Elixirtut.Lists do
  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)

end
