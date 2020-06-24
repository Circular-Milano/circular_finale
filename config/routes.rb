Rails.application.routes.draw do
  devise_for :users
  root to: "pages#homepage", as: "home"
  get "/about", to: "pages#about_us", as: "about"
  get "/index", to: "pages#index", as: "index"
  get "/get_the_app", to: "pages#get_the_app", as: "get_the_app"
  get "/how_it_works", to: "pages#how_it_works", as: "how_it_works"
  get "/experience", to: "pages#experience", as: "experience"
  get "/help", to: "pages#help", as: "help"


  get "/create_item", to: "items#create", as: "create_item"
  get "/new_item", to: "items#new", as: "new_item"
  get "/update_item", to: "items#update", as: "update_item"
  get "/edit_item", to: "items#edit", as: "edit_item"
  get "/destroy_item", to: "items#destroy", as: "destroy_item"
  get "/show_item", to: "items#show", as: "show_item"





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
