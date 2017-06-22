defmodule Link2 do
    import :timer, only: [ sleep: 1 ]
    
    def sad_func do
        sleep 500
        exit(:boom)
    end

    def run do
        spawn_link(Link2, :sad_func, [])
        receive do
            msg -> 
                IO.puts "received msg #{inspect msg}"
            after 1000 ->
                IO.puts "nothing happend"
        end
    end
end

Link2.run