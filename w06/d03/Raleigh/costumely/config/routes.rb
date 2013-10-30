Costumely::Application.routes.draw do

  resources :costumes, only: [:index, :new, :create, :show]

  root 'costumes#index'
end
