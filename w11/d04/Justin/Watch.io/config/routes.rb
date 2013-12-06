WatchIo::Application.routes.draw do
  root 'app#index'

  resources :app, only: [:index, :create]

  get 'moviesearch', to: 'app#create'

  resources :watchlists
end
