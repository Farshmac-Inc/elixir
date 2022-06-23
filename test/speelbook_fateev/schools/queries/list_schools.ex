defmodule SpeelbookFateev.Schools.Queries.ListSchoolsTest do
  use SpeelbookFateev.DataCase

  alias SpeelbookFateev.Schools

  @tag :listschool
  test "process/1 list_school test" do
    insert_list(10, :school)
    result = Schools.list_school()
    assert length(result) == 10
  end
end
