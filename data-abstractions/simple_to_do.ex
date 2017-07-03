defmodule ToDoList do
    def new, do: Map.new

    def add_entry(to_do_list, date, title) do
        Map.update(to_do_list, date, [title], fn(v) -> {v, [title] ++ v} end)
    end

    def entries(to_do_list, date) do
        Map.get(to_do_list, date, [])
    end
end