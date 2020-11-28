Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'
  resources :users, only: [:edit, :update, :show] do
    resources :areas, only: [:new, :create]
  end
  resources :logs, only: [:index, :new, :create, :show]
  resources :equipments, only: [:new, :create]
end