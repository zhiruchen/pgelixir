defmodule Sum do
    def sum(dict) do
        dict |> Map.values |> Enum.sum
    end
end

hd = [one: 1, two: 2, three: 3] |> Enum.into(Map.new)
IO.puts Sum.sum(hd)

m = %{four: 4, five: 5, six: 6}
IO.puts Sum.sum(m)