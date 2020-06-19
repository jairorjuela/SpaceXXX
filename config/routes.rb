Rails.application.routes.draw do
  root to: 'launches#index'
  devise_for :users

  resources :launches, only: [:create]
end
