Rails.application.routes.draw do
  resources :recipes
  root 'recipes#index'

  resources :tips
  root 'tips#index'
end
