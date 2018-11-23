Rails.application.routes.draw do
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :users

  scope module: :v1, constraints: ApiVersion.new('v1', true) do

  end
end