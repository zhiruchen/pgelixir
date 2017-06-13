defmodule Example do
    @author "xiaoming"
    def get_author do
        @author
    end
end

defmodule Example2 do
    @attr "one"
    def first, do: @attr
    @attr "two"
    def second, do: @attr
end