defmodule Fraction do
    defstruct a: nil, b: nil

    def new(a, b) do
        %Fraction{a: a, b: b}
    end

    def value(f) do
        %Fraction{a: x, b: y} = f
        x / y
    end

    def add(f1, f2) do
        new((f1.a * f2.b) + (f2.a*f1.b), f1.b*f2.b)
    end
end