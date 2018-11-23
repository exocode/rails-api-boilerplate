# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Test your API


Create a user

`User.create(name: "test", password:"test", password_confirmation:"test", email:"test@email.com)`

`brew install httpie` (mac)
`apt-get install httpie` (unix)

`http POST :3000/signup email=test@tes.com password=test password_confirmation=test name=test`
Returns a token
`http GET :3000/users Authorization:PUT_YOUR_TOKEN_HERE`