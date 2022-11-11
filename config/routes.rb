Rails.application.routes.draw do
  get 'avatars/create'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  resources :attendances
  resources :events
  resources :users
  resources :devise 
  resources :users, only: [:show] do
  resources :avatars, only: [:create]
  end

  root "events#index"
end
