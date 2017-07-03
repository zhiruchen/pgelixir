defmodule ToDoList do
    defstruct auto_id: 1, entries: Map.new

    def new, do: %ToDoList{}

    def add_entry(%ToDoList{entries: entries, auto_id: auto_id} = to_do_list, entry) do
        entry = Map.put(entry, :id, auto_id)
        new_entries = Map.put(entries, auto_id, entry)
    end
end