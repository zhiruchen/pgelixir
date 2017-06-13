list = [1,2,3]
[a,b,c] = list
IO.puts a
IO.puts b
IO.puts c

list1 = [1,2,[3,4,5]]
[a,b,c] = list1
IO.puts a
IO.puts b
IO.puts c

# ^a 取a原来的值match，而不是给它赋值
^a = 2