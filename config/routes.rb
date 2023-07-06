Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'

  resource :properties
end
