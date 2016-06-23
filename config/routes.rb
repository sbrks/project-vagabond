Rails.application.routes.draw do

  root to: "users#index"

  get "/users/new", to: "users#new"

  get "/signup", to: "users#new", as: "new_user"

  post "/users", to: "users#create"

  #user profile page
  get "/users/:id", to:"users#show", as: "user"



  #sign_in
  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  #logout
  delete "/logout", to: "sessions#destroy"

  #edit user profile, returns edit form for editing profile
  get "/users/:id/edit", to: "users#edit", as: "edit"

  #update user
  patch "/users/:id", to: "users#update"

  # index of all cities
  get "/cities", to: "cities#index"
  # get "/cities/:id", to: "cities#show", as: "city_show"

  #view posts in city profile
  get "/cities/:id", to: "posts#index"
  post "/cities/:id/posts", to: "posts#create"

  
  # edit form for posts
  get "/posts/:id/edit", to: "posts#edit", as: "post_edit"
  patch "/posts/:id", to: "posts#update", as: "post_update"
  delete "/posts/:id/delete", to: "posts#destroy", as: "delete"


  #view new post form
  get "/cities/:id/new", to: "posts#new", as: "new_post"
  post "/cities/:id/new", to: "posts#create"

  # show posts
  get "/posts", to: "posts#show"

  resources :posts, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :show, :index, :edit, :update]

end
