Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'
  resources :users, only: [:edit, :update]
end
