defmodule SpeelbookFateev.Sources.Commands.DeleteSource do
  alias SpeelbookFateev.Sources.Entities.Source
  alias SpeelbookFateev.Repo

  def process(%Source{} = source) do
    Repo.delete(source)
  end
end
