Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  resources :patients
  resources :users, only: :show
end