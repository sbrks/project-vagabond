Rails.application.routes.draw do

  root to: "users#index"
  #need to write home method in users controller

  get "/users", to: "users#index"

  #sign_in
  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  #logout
  delete "/sessions", to: "sessions#destroy"

  #sign up
  get "/sign_up", to: "users#new", as: "sign_up"

end
