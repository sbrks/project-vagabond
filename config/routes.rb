Rails.application.routes.draw do

  root to: "users#index"
  #need to write home method in users controller

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

  #
  get "/cities", to: "cities#index"

  get "/cities/:id", to: "cities#show", as: "city_show"

  #view posts in city profile
  get "/cities/:id/posts", to: "posts#index"
  post "/cities/:id/posts", to: "posts#create"
  #view new post form
  get "/cities/:id/new", to: "city#new"


  resources :users, only: [:new, :create, :show, :index, :edit, :update]

end
