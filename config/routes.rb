Rails.application.routes.draw do
  get '/movies', to: "movies#index", as: "movies_index"
  post '/movies', to: "movies#create", as: "movies"
  get '/movies/new', to: "movies#new", as: "movies_new"
  get 'movies/:id/edit', to:"movies#edit", as: "movies_edit"
  get '/movies/:id', to: "movies#show", as: "movie"
  put '/movies/:id', to: "movies#update"
  patch 'movies/:id', to: "movies#update"
  delete '/movies/:id', to: "movies#destroy"

  root to: "movies#index"
end
