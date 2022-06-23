defmodule SpeelbookFateev.Sources.Commands.UpdateSource do
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Repo

  def process(%Source{} = source, attrs) do
    source
    |> Source.update_changeset(attrs)
    |> Repo.update()
  end
end
