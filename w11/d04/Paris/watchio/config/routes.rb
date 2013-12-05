Watchio::Application.routes.draw do
  resources :movies, only: [:index, :create, :update, :destroy] do
    collection do
      get 'search'
    end

    collection do 
      get 'results'
    end
  end
end
