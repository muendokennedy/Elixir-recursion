defmodule Elixirtut.Structs.SevenWonders do

  defstruct name: "", country: ""

  alias Elixirtut.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  @spec all :: [t()]
  # ---------------------- All ------------------------
  def all() do
    [
      %SevenWonders{name: "The Great Wall of China", country: "China"},
      %SevenWonders{name: "The Great Pyramids", country: "Egypt"},
      %SevenWonders{name: "The Burg Khalifa", country: "Dubai"}
    ]
  end

  # ---------------------------------------------------
  @spec print_names([t()]) :: :ok

  def print_names(wonders) do
    wonders |> Enum.each(fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String.t()) :: [t()]
  def filter_by_country(wonders, country) do
    wonders |> Enum.filter(fn %{country: country_name} -> country_name == country end)
  end

end
