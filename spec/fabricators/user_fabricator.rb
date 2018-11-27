Fabricator(:user) do
  email    {Faker::Internet.email}
  name    {Faker::Name.name}
  password {Faker::Internet.password}
  birthday Date.today - 18.years
end

Fabricator(:invalid_user, from: :user) do
  birthday Date.today - 16.years

end
