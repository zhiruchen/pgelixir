```
zhiruchen@bogon ~/D/p/e/p/spawn> elixir -r chain.ex -e "Chain.run(10)"
{3757, "Result is 10"}
zhiruchen@bogon ~/D/p/e/p/spawn> elixir -r chain.ex -e "Chain.run(100)"
{3519, "Result is 100"}
zhiruchen@bogon ~/D/p/e/p/spawn> elixir -r chain.ex -e "Chain.run(1000)"
{11504, "Result is 1000"}
zhiruchen@bogon ~/D/p/e/p/spawn> elixir -r chain.ex -e "Chain.run(10000)"
{100152, "Result is 10000"}
zhiruchen@bogon ~/D/p/e/p/spawn> elixir -r chain.ex -e "Chain.run(400_000)"

23:12:44.847 [error] Too many processes
** (SystemLimitError) a system limit has been reached
    :erlang.spawn(Chain, :counter, [#PID<0.71.8>])
    chain.ex:12: anonymous fn/2 in Chain.create_process/1
    (elixir) lib/enum.ex:1785: Enum.reduce_range_inc/4
    chain.ex:10: Chain.create_process/1
    (stdlib) timer.erl:197: :timer.tc/3
    chain.ex:24: Chain.run/1
    (stdlib) erl_eval.erl:670: :erl_eval.do_apply/6

zhiruchen@bogon ~/D/p/e/p/spawn> elixir -erl "+P 1000000" -r chain.ex -e "Chain.run(400_000)"
-erl : Unknown option
No file named +P 1000000
zhiruchen@bogon ~/D/p/e/p/spawn> elixir --erl "+P 1000000" -r chain.ex -e "Chain.run(400_000)"
{3695881, "Result is 400000"}
zhiruchen@bogon ~/D/p/e/p/spawn> elixir --erl "+P 1000000" -r chain.ex -e "Chain.run(1_000_000)"
{11058669, "Result is 1000000"}
```