TodoLy::Application.routes.draw do
  
  resources :todos, only: [:index]
end
