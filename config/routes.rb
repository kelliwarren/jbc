JustinBrazilianCookery::Application.routes.draw do

resources :chefs
resources :recipes
resources :users, only: [:new, :create]

root "static_pages#home"
get "/about" => "static_pages#about"



end
