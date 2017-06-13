defmodule MapSum do
    def mapsum(list, func) do
        nl = Enum.map list, func
        sum(nl, 0)
    end

    def sum([], total), do: total
    def sum([head|tail], total), do: sum(tail, head+total)
end