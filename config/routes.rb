Rails.application.routes.draw do
  # resources :countries, except: :index do
  #   resources :regions, only: [:new, :create]
  # end
  # resources :regions, only: [:index, :edit, :update, :destroy]

  resources :countries, except: :index do
    resources :regions
  end
  resources :regions, only: [:destroy]

  devise_for :users
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
