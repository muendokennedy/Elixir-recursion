defmodule Elixirtut.Lists do

  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)

  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc + h)

end
