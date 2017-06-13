fizzbuzz = fn
    {0,0,_} -> "FizzBuzz"
    {0,_,_} -> "Fizz"
    {_,0,_} -> "Buzz"
    {_,_,x} -> x
end

IO.puts fizzbuzz.({0,0,1})
IO.puts fizzbuzz.({0,2,3})
IO.puts fizzbuzz.({1,0,1})
IO.puts fizzbuzz.({"1", "2", "33333"})

callfz = fn
    n -> fizzbuzz.({rem(n, 3), rem(n, 5), n})
end
        
IO.puts callfz.(10)
IO.puts callfz.(11)
IO.puts callfz.(12)