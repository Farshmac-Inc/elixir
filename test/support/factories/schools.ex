defmodule SpeelbookFateev.Factories.SchoolFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias SpeelbookFateev.Schools.Entities.School

      def school_factory(attrs) do
        schoolName = Map.get(attrs, :schoolName, Lorem.sentence(8..16))

        %School{
          schoolName: schoolName,
        }
      end
    end
  end
end
