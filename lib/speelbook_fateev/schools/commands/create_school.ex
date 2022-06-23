defmodule SpeelbookFateev.Schools.Commands.CreateSchool do
  alias SpeelbookFateev.Schools.Entities.School
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %School{}
    |> School.create_changeset(attrs)
    |> Repo.insert()
  end
end
