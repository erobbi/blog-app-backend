Rails.application.routes.draw do
  resources :comments, only: [:destroy, :update, :create]
  resources :blogs
  resources :users

  # custom route to manage new user
  post '/signup', to: 'users#create'
  # get '/profile', to: 'users#profile'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # increment likes when likebutton clicks
  patch '/blogs/:id/like', to: 'blogs#increment_likes'
end
