defmodule SpeelbookFateev.Sources.Queries.ListSources do
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Repo

  def process do
    Repo.all(Sources)
  end
end
