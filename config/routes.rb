Rails.application.routes.draw do
<<<<<<< HEAD
=======

  root to: "users#index"
  #need to write home method in users controller

  get "/users", to: "users#index"

  get "/users/new", to: "users#new"

  post "/users", to: "users#create"

  #sign_in
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  #logout
  delete "/sessions", to: "sessions#destroy"

  #sign up
  get "/sign_up", to: "users#new", as: "sign_up"

  resources :users, only: [:new, :create, :show, :index]
>>>>>>> b8011385d1540d1d7a8556ca53213c009b288666
  
end
