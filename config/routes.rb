Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes, only: [:new, :create, :show, :edit, :update]
  resources :cuisines, only: [:new, :create, :show]
end
