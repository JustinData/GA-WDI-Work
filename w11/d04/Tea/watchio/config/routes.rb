Watchio::Application.routes.draw do
  root 'watchlist#index'
  resources :movies
end
