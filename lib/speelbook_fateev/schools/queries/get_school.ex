defmodule SpeelbookFateev.Schools.Queries.GetSchool do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Schools.Entities.School
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(School, id)
  end
end
