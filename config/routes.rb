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

  get "/create_order", to: "orders#create", as: "create_order"
  get "/new_order", to: "orders#new", as: "new_order"
  get "/update_order", to: "orders#update", as: "update_order"
  get "/edit_order", to: "orders#edit", as: "edit_order"
  get "/destroy_order", to: "orders#destroy", as: "destroy_order"
  get "/show_order", to: "orders#show", as: "show_order"

  get "/create_review", to: "reviews#create", as: "create_review"
  get "/new_review", to: "reviews#new", as: "new_review"
  get "/update_review", to: "reviews#update", as: "update_review"
  get "/edit_review", to: "reviews#edit", as: "edit_review"
  get "/destroy_review", to: "reviews#destroy", as: "destroy_review"
  get "/show_review", to: "reviews#show", as: "show_review"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
