RetFlix::Application.routes.draw do
  get "movies/list" => "movies#list"

resources :movies
  # get "movies" => "movies#index"
  # get "movie/new" => "movies#new"
  # post "movies" => "movies#create"
  # get "movies/:id" => "movies#show"
  # get "movies/:id/edit" => "movies#edit", :as => :movie
  # put "movies/:id" => "movies#update"
end