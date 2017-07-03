defmodule MultiDict do
    def new, do: Map.new

    def add(to_do_list, date, title) do
        Map.update(to_do_list, date, [title], fn(v) -> {v, [title] ++ v} end)
    end

    def get(to_do_list, date) do
        Map.get(to_do_list, date, [])
    end
end

defmodule ToDoList do
    def new, do: MultiDict.new

    def add_entry(to_do_list, date, title) do
        MultiDict.add(to_do_list, date, title)
    end

    def entries(to_do_list, date) do
        MultiDict.get(to_do_list, date)
    end
end