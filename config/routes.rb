Rails.application.routes.draw do
<<<<<<< HEAD
=======

  root to: "users#index"
  #need to write home method in users controller
  
  get "/users/new", to: "users#new"

  post "/users", to: "users#create"

  #user profile page
  # get "/users/:id", to:"users#show"

  get "/sign_up", to: "users#create"


  #sign_in
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  #logout
  delete "/sessions", to: "sessions#destroy"

  #edit user profile
  get "/users/:id/edit", to: "users#edit"

  #view posts in city profile
  get "/cities/:city_id/posts", to: "city#posts_index", as: "index_posts"

  #view new post form
  get "/cities/:city_id/new_post", to: "city#new_post", as: "post"

<<<<<<< HEAD
  resources :users, only: [:new, :create, :show, :index]
<<<<<<< HEAD
>>>>>>> b8011385d1540d1d7a8556ca53213c009b288666
  
=======
=======
  resources :users, only: [:new, :create, :show, :index, :edit]
>>>>>>> master

>>>>>>> master
end
