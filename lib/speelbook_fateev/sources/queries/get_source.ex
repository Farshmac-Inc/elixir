defmodule SpeelbookFateev.Sources.Queries.GetSource do
  @moduledoc """
  ShortDecription
  """
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Repo

  def process(id) do
    Repo.find(Source, id)
  end
end
