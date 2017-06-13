defmodule DoSum do
    def dsum([], total), do: total
    def dsum([head|tail], total), do: dsum(tail, head+total)
end

defmodule DoSum2 do
    def sum(list), do: _sum(list, 0)

    defp _sum([], total), do: total
    defp _sum([head|tail], total), do: _sum(tail, head+total)
end