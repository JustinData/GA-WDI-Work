Watchio::Application.routes.draw do
  rotot 'movies#index'
  resources :movies
end
