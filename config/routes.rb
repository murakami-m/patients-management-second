Rails.application.routes.draw do
  devise_for :users
  root to: "patients#index"
  resources :patients do
    resources :accept_comments, only: :create
    resources :discharge_comments, only: :create
    collection do
      get 'search'
    end
    collection do
      get 'current_medicine'
    end
    collection do
      get 'current_surgery'
    end
    collection do
      get 'current_orthopedics'
    end
    collection do
      get 'before_hospitalization'
    end
    collection do
      get 'discharged_patients'
    end
    collection do
      get 'discharged_medicine'
    end
    collection do
      get 'discharged_surgery'
    end
    collection do
      get 'discharged_orthopedics'
    end
  end
  resources :users, only: :show
end