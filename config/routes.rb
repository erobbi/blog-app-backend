Rails.application.routes.draw do
  resources :comments, only: [:destroy, :update, :create]
  resources :blogs
  resources :users, only: [:destroy, :update]

  # custom route to manage new user
  post '/signup', to: 'users#create'
  get "/me", to: "users#show"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # increment likes when likebutton clicks
  patch '/blogs/:id/like', to: 'blogs#increment_likes'
  patch '/blogs/:id/dislike', to: 'blogs#decrement_likes'
  delete '/allblogs/comments/:id', to: 'comments#destroy'
  # get '/profile', to: 'users#profile'
end
