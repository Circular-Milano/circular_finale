Rails.application.routes.draw do
  devise_for :users
  root to: "pages#homepage", as: :home
  get "about", to: "pages#about_us", as: :about
  get "index", to: "pages#index", as: :index
  get "get_the_app", to: "pages#get_the_app", as: :get_the_app
  get "how_it_works", to: "pages#how_it_works", as: :how_it_works
  get "experience", to: "pages#experience", as: :experience
  get "help", to: "pages#help", as: :help
  get "contact", to: "pages#contact", as: :contact


  resources :items


#  READ ALL ITEMS
#  get "/items", to: "items#index"

#  READ ONE ITEMS
#  get "/items/:id", to: "items#show"

#  CREATE AN ITEM.
#  1 step: l utente vuole vedere il form da riempire. 2 step: creare l item

#  get "/items/new", to: "items#new"  # -->  display the item form
#  post "/items", to: "items#create"

#  UPDATE ALL ITEMS
#  1 step: l utente vuole vedere il form da riempire. 2 step: update del database

#  get "/items/:id/edit", to: "items#edit"
#  patch "/items/:id", to: "items#update"

#  DELETE A ITEMS
#  delete "/items/:id", to: "items#destroy"































 # get "create_order", to: "orders#create", as: "create_order"
 # get "new_order", to: "orders#new", as: "new_order"
#  get "update_order", to: "orders#update", as: "update_order"
#  get "edit_order", to: "orders#edit", as: "edit_order"
#  get "destroy_order", to: "orders#destroy", as: "destroy_order"
#  get "show_order", to: "orders#show", as: "show_order"

 # get "create_review", to: "reviews#create", as: "create_review"
 # get "new_review", to: "reviews#new", as: "new_review"
#  get "update_review", to: "reviews#update", as: "update_review"
#  get "edit_review", to: "reviews#edit", as: "edit_review"
#  get "destroy_review", to: "reviews#destroy", as: "destroy_review"
 # get "show_review", to: "reviews#show", as: "show_review"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
