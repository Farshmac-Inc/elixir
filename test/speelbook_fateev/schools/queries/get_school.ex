defmodule SpeelbookFateev.Schools.Queries.GetSchoolTest do
  use SpeelbookFateev.DataCase

  alias SpeelbookFateev.Schools

  @tag :getschool
  test "process/1 get school by id" do
    school = insert(:school)
    Schools.get_school(school.id)
    assert {:ok, result} = Schools.get_school(school.id)
    assert school.id == result.id
  end
end
