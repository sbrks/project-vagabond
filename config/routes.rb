Rails.application.routes.draw do

  root to: "#home"


  #sign_in
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

end
