Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, only: [:edit, :update, :destory]
  resources :rooms, only: [:new, :create]
end
