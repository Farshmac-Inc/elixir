defmodule SpeelbookFateev.Schools.Queries.ListSchoolsTest do
  use SpeelbookFateev.DataCase

  alias SpeelbookFateev.Schools

  @tag :listschools
  test "process/1 list_school test" do
    insert_list(10, :school)
    result = Schools.list_schools()
    assert length(result) == 10
  end
end
