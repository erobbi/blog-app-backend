Rails.application.routes.draw do
  resources :comments
  resources :blogs, only: [:show, :index, :create]
  resources :users

  # custom route to manage new user
  post '/signup', to: 'users#create'
  # get '/profile', to: 'users#profile'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
