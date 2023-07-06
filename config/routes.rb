Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resources :furnishings
  resources :users

  post "/login", to:"session#login"
  delete "/logout", to:"session#logout"
  get "/current_user", to:"users#loggedin_user"
end
