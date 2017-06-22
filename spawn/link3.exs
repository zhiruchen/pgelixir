defmodule Link3 do
    import :timer, only: [ sleep: 1 ]
    
    def sad_func do
        sleep 500
        exit(:boom)
    end

    def run do
        Process.flag(:trap_exit, true)
        spawn_link(Link3, :sad_func, [])
        receive do
            msg -> 
                IO.puts "received msg #{inspect msg}"
            after 1000 ->
                IO.puts "nothing happend"
        end
    end
end

Link3.run