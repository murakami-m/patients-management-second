Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  resources :patients do
    resources :accept_comments, only: :create
    resources :discharge_comments, only: :create
  end
  resources :users, only: :show
end