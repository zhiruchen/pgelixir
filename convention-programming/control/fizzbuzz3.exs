defmodule FizzBuzz do
    def upto(n) when n > 0 do
        1..n |> Enum.map(&fizzbuzz/1)
    end

    defp fizzbuzz(n) do
        {r1, r2} = {rem(n, 3), rem(n, 5)}
        case {r1, r2} do
            {0, 0} -> "FizzBuzz"
            {0, _} -> "Fizz"
            {_, 0} -> "Buzz"
            {_, _} -> n
        end
    end
end