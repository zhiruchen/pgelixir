defmodule RecurSum do
    def num(1), do: 1
    def num(n), do: n + num(n-1)
end