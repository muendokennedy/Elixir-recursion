defmodule Elixirtut.Recursion.SumDigits do

  def sum_upto(0), do: 0

  def sum_upto(num) do
    sum_upto_tail_rec(num)
  end

  def sum_upto_tail_rec(num, acc \\ 0)

  def sum_upto_tail_rec(0, acc), do: acc

  def sum_upto_tail_rec(num, acc) do
    sum_upto_tail_rec(num - 1, acc + num)
  end

end
