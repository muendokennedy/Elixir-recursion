defmodule Elixirtut.Structs.Expense do

  alias Elixirtut.Structs.Expense

  defstruct(
    title: "",
    date: nil,
    amount: 0,
    store: ""
  )

  @type t :: %Expense{
    title: String.t(),
    date: Date.t(),
    amount: number(),
    store: String.t()
  }

  @spec sample :: [t()]
  def sample do
    [
      %Expense{title: "Grocery", date: ~D[2024-09-01], amount: 20.00, store: "Metro"},
      %Expense{title: "Mobile", date: ~D[2023-09-04], amount: 25.00, store: "Nike"},
      %Expense{title: "Jacket", date: ~D[2023-09-04], amount: 26.00, store: "Marks"},
      %Expense{title: "Jordan", date: ~D[2023-09-04], amount: 21.00, store: "Bell"},
      %Expense{title: "Cell Phone", date: ~D[2023-09-04], amount: 18.00, store: "Naboka"}
    ]
  end

  @spec total([t()]) :: number()
  def total(expenses) do
    expenses |> Enum.reduce(0, fn  expense, acc -> expense.amount + acc  end)
  end

  @spec sort_by_date([t()]) :: [t()]
  def sort_by_date(expenses) do
    expenses |> Enum.sort_by(& &1.date)
  end

  @spec add_expense(t()) :: [t()]
  def add_expense(%Expense{} = expense) do
    [expense | sample()]
  end

  @spec update_amount(String.t(), number()) :: [t()]
  def update_amount(title, amount) do
   [item] = Enum.filter(sample(), fn %{title: expense_title} -> expense_title == title end)
   new_item = %{item | amount: amount}
   [new_item | sample() |> List.delete(item)]
  end
end
