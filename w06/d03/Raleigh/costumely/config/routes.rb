Costumely::Application.routes.draw do

  resources :costumes, only: [:index]

  root 'costumes#index'
end
