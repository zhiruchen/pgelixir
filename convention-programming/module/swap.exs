defmodule Swapper do
    def swap([]), do: []
    def swap([a,b|tail]), do: [b,a|swap(tail)]
    def swap([_]), do: raise "不能交换奇数个元素的列表"
endw