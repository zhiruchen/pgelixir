defmodule Link1 do
    import :timer, only: [ sleep: 1 ]
    
    def sad_func do
        sleep 500
        exit(:boom)
    end

    def run do
        Process.flag(:trap_exit, true)
        spawn(Link1, :sad_func, [])
        receive do
            msg -> 
                IO.puts "received msg #{inspect msg}"
            after 1000 ->
                IO.puts "nothing happend"
        end
    end
end

Link1.run