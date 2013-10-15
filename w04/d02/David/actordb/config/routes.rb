Actordb::Application.routes.draw do
 resources :actors, only: [:index, :new]
end
