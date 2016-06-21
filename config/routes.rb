Rails.application.routes.draw do

  root to: "users#index"
  #need to write home method in users controller
  
  get "/users/new", to: "users#new"

  post "/users", to: "users#create"

  #sign_in
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  #logout
  delete "/sessions", to: "sessions#destroy"


  resources :users, only: [:new, :create, :show, :index]

end
