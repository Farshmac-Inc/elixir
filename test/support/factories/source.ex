defmodule SpeelbookFateev.Factories.SourceFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias SpeelbookFateev.Sources.Entities.Source

      def source_factory(attrs) do
        sourceName = Map.get(attrs, :sourceName, Lorem.sentence(8..16))

        %Source{
          sourceName: sourceName,
        }
      end
    end
  end
end
