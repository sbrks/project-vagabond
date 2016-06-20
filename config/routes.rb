Rails.application.routes.draw do

  root to: "users#index"
  #need to write home method in users controller

  #sign_in
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

end
