# README

This repo provides a jumpstart for your Rails API based on REST Api. 

It contains everything you need to Start your API. 

* Features
  * fast_jsonapi (you can easily switch to any other serialization like active_model_serializers or jbuilder)
  * pundit (Authorization)
  * rspec (with jumpstart json helpers )
  * rack-attack (Throttling Api and blacklisting)
  * JsonWebToken (Authentication)
  * rack-cors 
  * database_cleaner
  * webmock and faker
  * rspec-graphql_matchers
  * rubocop
  * better_errors
  * graphiql-rails
  * dotenv
  * redis
  * prepared capistrano

* Rename the app

To fit your needs you can rename the app by using 
`rails rename:into YourNewAppName`  

* Ruby version

`ruby '2.5.1'`

* Rails

`rails 5.2.1`

* Configuration

From now you can decide which react framework you wanna choose (For example `react_on_rails` or `react-rails`)

* Database creation and initialize

`rails db:migrate && rails db:setup && rails db:seed`

* How to run the test suite

`rake` or `rspec` 

* Services (job queues, cache servers, search engines, etc.)




## Test your API


Create a user

`User.create(name: "test", password:"test", password_confirmation:"test", email:"test@email.com)`

`brew install httpie` (mac)
`apt-get install httpie` (unix)

`http POST :3000/signup email=test@tes.com password=test password_confirmation=test name=test`
Returns a token
`http GET :3000/users Authorization:PUT_YOUR_TOKEN_HERE`