Rails.application.routes.draw do
  devise_for :users
  root to: "pages#homepage", as: "home"
  get "/about", to: "pages#about_us", as: "about"
  get "/index", to: "pages#index", as: "index"
  get "/get_the_app", to: "pages#get_the_app", as: "get_the_app"
  get "/how_it_works", to: "pages#how_it_works", as: "how_it_works"
  get "/experience", to: "pages#experience", as: "experience"
  get "/help", to: "pages#help", as: "help"





  resources :items

#        Prefix        Verb        URI Pattern           Controller#Action

#        items         GET          /items                items#index
#                      POST         /items                items#create

#       new_item       GET          /items/new            items#new

#       edit_item      GET          /items/:id/edit       items#edit

#          item        GET          /items/:id            items#show

#                      PATCH        /items/:id            items#update
#                      PUT          /items/:id            items#update

#                      DELETE       /items/:id            items#destroy




  resources :orders do
    resources :reviews, only: [ :new, :create ]
  end

#        Prefix        Verb        URI Pattern            Controller#Action

#        orders        GET          /orders                orders#index
#                      POST         /orders                orders#create

#       new_orders     GET          /orders/new            orders#new

#       edit_orders    GET          /orders/:id/edit       orders#edit

#          order       GET          /orders/:id            orders#show

#                      PATCH        /orders/:id            orders#update
#                      PUT          /orders/:id            orders#update

#                      DELETE       /orders/:id            orders#destroy


#       Prefix          Verb        URI Pattern                     Controller#Action

#   new_order_review    GET        /orders/:order_id/reviews/new      reviews#new
#   order_reviews       POST       /orders/:order_id/reviews          reviews#create



# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
