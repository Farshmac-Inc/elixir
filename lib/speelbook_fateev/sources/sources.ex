defmodule SpeelbookFateev.Sources do
  alias SpeelbookFateev.Sources.Commands.{
    CreateSource,
    DeleteSource,
    UpdateSource
  }

  alias SpeelbookFateev.Sources.Queries.{
    GetSource,
    ListSources
  }

  # Commands
  defdelegate create_source(attrs), to: CreateSource, as: :process
  defdelegate delete_source(source), to: DeleteSource, as: :process
  defdelegate update_source(source, attrs), to: UpdateSource, as: :process

  # Queries
  defdelegate get_source(id), to: GetSource, as: :process
  defdelegate list_sources(), to: ListSources, as: :process
end
