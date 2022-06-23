defmodule SpeelbookFateev.Schools.Commands.DeleteSchool do
  alias SpeelbookFateev.Schools.Entities.School
  alias SpeelbookFateev.Repo

  def process(%School{} = school) do
    Repo.delete(school)
  end
end
