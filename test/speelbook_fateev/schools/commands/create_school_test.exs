defmodule SpeelbookFateev.Schools.Commands.CreateSchoolTest do
  use SpeelbookFateev.DataCase
  alias SpeelbookFateev.Schools

  @tag :createschool
  test "process/1 create_school test" do
    assert {:ok, create_school} = Schools.create_school(%{schoolName: "CreateTest"})
    {status, get_school} = Schools.get_school(create_school.id)
    assert get_school.id == create_school.id
  end
end
