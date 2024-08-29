defmodule Elixirtut.Lists do
  @moduledoc """

  Function summary:
  Sum of numbers in a list using head and tail recursion
  """

  @doc """
  Return the sum of numbers in a list using head recursion
  """
  @spec sum(list(number())) :: number()

  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple(list(number())) :: number()

  def sum_simple([]), do: 0
  def sum_simple([h | t]), do: h + sum_simple(t)

  @spec sum_tail_rec(list(number()), integer()) :: number()

  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc + h)

end
