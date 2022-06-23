defmodule SpeelbookFateev.Schools.Commands.UpdateSchoolTest do
  use SpeelbookFateev.DataCase
  alias SpeelbookFateev.Schools

  @tag :updateschool
  test "process/1 update_school test" do
    school = insert(:school, %{schoolName: "CreateTest"})
    attrs = %{schoolName: "UpdateTest"}
    assert {:ok, update_school} = Schools.update_school(school, attrs)
    assert update_school.schoolName == attrs.schoolName
  end
end
