defmodule Spawn1 do
    def greet do
        receive do
            {sender, msg} -> send sender, { :ok, "Hello, #{msg}" }
        end
    end
end