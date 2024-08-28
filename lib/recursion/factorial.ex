defmodule Elixirtut.Recursion.Factorial do

  def factorial(1), do: 1
  def factorial(0), do: 1

  def factorial(num), do: num * factorial(num - 1)

  def factorial_tail_rec(num, acc \\ 1)

  def factorial_tail_rec(1, acc), do: acc

  def factorial_tail_rec(num, acc), do: factorial_tail_rec(num - 1, acc * num)
end
