Watchio::Application.routes.draw do
  resources: movies, only: [:create, :update, :destroy]
end
