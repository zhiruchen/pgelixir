defmodule BitMap do
    defstruct value: 0

    defimpl String.Chars do
        def to_string(%BitMap{value: value}), do: Integer.to_string(value)
    end
end

defmodule Main do
    def main do
        bm = %BitMap{value: 50}
        IO.puts "bitmap value: #{bm}"
    end
end