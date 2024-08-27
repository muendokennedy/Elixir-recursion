defmodule Elixirtut.Recursion.SumDigits do

  def sum_upto(0), do: 0

  def sum_upto(num) do
    num + sum_upto(num - 1)
  end

end
