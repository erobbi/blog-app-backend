Rails.application.routes.draw do
  resources :blogs
  resources :comments
  resources :users

  # custom route to manage new user
  post '/signup', to: 'users#create'
  # get '/profile', to: 'users#profile'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
