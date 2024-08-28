defmodule Elixirtut.Recursion.ReverseNumber do
  def reverse(num, acc \\ 0)
  def reverse(0, acc), do: acc
  def reverse(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    reverse(new_num, new_acc)
  end
end
