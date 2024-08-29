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

  # --------------------------------- Reverse -----------------------------

  @doc """
  Return the reverse of the elements in a list.
  """
  @spec reverse([any()], [any()]) :: [any()]

  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])

  # --------------------------  Map ---------------------------------------
  @doc """
  Return a new list that has it's elements altered through a callback function
  """
  @spec map([(any())], (any() -> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: reverse(acc)
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])

  # --------------------------  Concat --------------------------------------

  @spec concat([any()], [any()]) :: [any()]
  def concat(src, dst), do: concat_func(src |> reverse(), dst)
  defp concat_func([], dst), do: dst
  defp concat_func([h | t], dst), do: concat_func(t, [h | dst])

  # --------------------------  FlatMap -------------------------------------

  def flat_map(elements, func, acc \\ [])
  def flat_map([], _, acc), do: acc
  def flat_map([h | t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))
end
