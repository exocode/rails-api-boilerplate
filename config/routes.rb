Rails.application.routes.draw do
  namespace :v1 do
    resources :users
  end
  constraints subdomain: 'api' do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :v1 do
      resources :users
    end
  end
end