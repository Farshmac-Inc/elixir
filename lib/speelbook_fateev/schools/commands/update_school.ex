defmodule SpeelbookFateev.Schools.Commands.UpdateSchool do
  alias SpeelbookFateev.Schools.Entities.School
  alias SpeelbookFateev.Repo

  def process(%School{} = school, attrs) do
    school
    |> School.update_changeset(attrs)
    |> Repo.update()
  end
end
