defmodule FibSolver do
    def fib(scheduler) do
        send scheduler, { :ready, self() }
        receive do
            { :fib, n, client } ->
                send client, { :answer, n, fib_calc(n), self()}
                fib(scheduler)
            { :shutdown } ->
                exit(:normal)
        end
    end

    defp fib_calc(0), do: 0
    defp fib_calc(1), do: 1
    defp fib_calc(n), do: fib_calc(n-1) + fib_calc(n-2)
end

defmodule Scheduler do

    def run(num_processes, module, func, to_calculate) do
        (1..num_processes)
        |> Enum.map(fn (_) -> spawn(module, func, [self()]) end)
        |> schedule_process(to_calculate, [])
    end
    
    defp schedule_process(processes, queue, results) do
        receive do
            {:ready, pid} when length(queue) > 0 ->
                [next | tail] = queue
                send pib, {:fib, next, self()}
                schedule_process(processes, tail, results)
            
            {:ready, pid } ->
                send pid, {:shut_down}
                if length(queue) > 0 do
                    schedule_process(List.delete(processes, pid), queue, results)
                else
                    Enum.sort(results, fn {n1, _}, {n2, _} -> n1 <= n2 end)
                end
            {:answer, number, result, _pid} ->
                schedule_process(processes, queue, [ {number, result}|results ])

        end
    end
end