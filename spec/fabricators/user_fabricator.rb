Fabricator(:user) do
  email    {Faker::Internet.email}
  name    {Faker::Internet.name}
  password_digest {Faker::Internet.password}
  birthday Date.today - 18.years
end
