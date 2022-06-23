defmodule SpeelbookFateev.Sources.Commands.CreateSource do
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Repo

  def process(attrs) do
    %Source{}
    |> Source.create_changeset(attrs)
    |> Repo.insert()
  end
end
