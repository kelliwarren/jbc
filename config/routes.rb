JustinBrazilianCookery::Application.routes.draw do

resources :chefs
resources :recipes

get "/" => "static_pages#home"
get "/about" => "static_pages#about"

end
