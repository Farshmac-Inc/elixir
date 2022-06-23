defmodule SpeelbookFateev.Schools.Queries.ListSchools do
  alias SpeelbookFateev.Schools.Entities.School
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(School)
  end
end
