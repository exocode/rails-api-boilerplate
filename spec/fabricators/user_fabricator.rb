Fabricator(:user) do
  email    Faker::Internet.email
  password Faker::Internet.password
  birthday Date.today - 18.years
end
