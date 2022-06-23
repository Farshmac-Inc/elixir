defmodule SpeelbookFateev.Factories.UserFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias SpeelbookFateev.Accounts.Entities.User

      def user_factory(attrs) do
        password = Map.get(attrs, :password, Lorem.sentence(8..16))
        email = Map.get(attrs, :email, Internet.email())

        %User{
          email: sequence(:email, &"#{&1}_#{email}"),
          password: password
        }
      end
    end
  end
end
