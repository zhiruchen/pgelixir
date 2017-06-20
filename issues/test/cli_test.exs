defmodule CliTest do
    use ExUnit.Case
    import Issues.CLI, only: [ parse_args: 1,
                               sort_into_ascending_order: 1,
                               convert_to_list_of_hashdicts: 1 ]

    test "test help" do
        assert parse_args(["-h", "anything"]) == :help
        assert parse_args(["--help", "anything"]) == :help
    end

    test "test three args" do
        assert parse_args(["user", "project", "99"]) == {"user", "project", 99}
    end

    test "default count" do
        assert parse_args(["user", "project"]) == {"user", "project", 4}
    end

    test "sort ascending order the correct way" do
        data_list = fake_created_at_list(["c", "a", "b"])
        IO.inspect data_list
        result = sort_into_ascending_order(data_list)
        issues = for issue <- result, do: issue["created_at"]
        assert issues = ~w{a b c}
    end

    defp fake_created_at_list(values) do
        data = for value <- values, do: [ {"created_at", value}, {"other_data", "xxx"} ]
        IO.inspect data
        convert_to_list_of_hashdicts data
    end
    
end