Costumely::Application.routes.draw do
 resources :costumes, only: [:index, :show]
end
