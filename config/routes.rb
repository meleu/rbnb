Rails.application.routes.draw do
  devise_for :users
  root 'properties#index'

  resources :properties
end
