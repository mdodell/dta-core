Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'test', to: 'test#members_only'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
