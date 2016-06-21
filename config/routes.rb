Rails.application.routes.draw do

  root to: "users#index"
  #need to write home method in users controller

  get "/signup", to: "users#new", as: "new_user"

  post "/users", to: "users#create"

  #user profile page
  # get "/users/:id", to:"users#show"

  


  #sign_in
  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  #logout
  delete "/logout", to: "sessions#destroy"

  #edit user profile
  get "/users/:id/edit", to: "users#edit"

  #view posts in city profile
  get "/cities/:city_id/posts", to: "city#posts_index", as: "index_posts"

  #view new post form
  get "/cities/:city_id/new_post", to: "city#new_post", as: "post"

  resources :users, only: [:new, :create, :show, :index, :edit]

end
