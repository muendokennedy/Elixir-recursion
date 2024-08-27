defmodule Elixirtut.Recursion.PrintDigits do

  # The base case for the recursion
  def upto(0), do: 0

  def upto(nums) do
    upto(nums - 1)
    IO.puts(nums)
  end

end
