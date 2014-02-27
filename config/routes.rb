JustinBrazilianCookery::Application.routes.draw do

resources :chefs
resources :recipes
resources :users, only: [:new, :create]

root "static_pages#home"
get "/about" => "static_pages#about"

delete '/logout' => 'sessions#logout'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/signup' => 'users#new'






end
