defmodule SpeelbookFateev.Factories do
  use ExMachina.Ecto, repo: SpeelbookFateev.Repo

  use SpeelbookFateev.Factories.{
    UserFactory,
    SchoolFactory,
    SourceFactory,
  }
end
