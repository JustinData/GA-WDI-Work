Costumely::Application.routes.draw do
  
  resources :costumes do
    member do 
      resources :notes
    end
  end

end
