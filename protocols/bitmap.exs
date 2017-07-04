defmodule BitMap do
    defstruct value: 0
end

defimpl Enumerable, for: BitMap do
    import :math, only: [ log: 1 ]
    def count(%BitMap{value: value}) do
        { :ok, trunc(log(abs(value))/log(2))+1 }
    end
end

defmodule Main do
    def main do
        fifty = %BitMap{value: 50}
        IO.puts Enum.count fifty
    end
end
