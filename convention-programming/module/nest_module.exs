defmodule Outer do
    defmodule Inner do
        def func do
            IO.puts "Inner func"
        end
    end
    def func do
        IO.puts "Outter func"
    end
end