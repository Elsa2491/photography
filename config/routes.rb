Rails.application.routes.draw do
  resources :countries, except: :index do
    resources :regions, shallow: true do
      resources :photos, shallow: true
    end
  end
  resources :regions, only: [:edit, :update, :destroy]
  resources :photos, only: [:edit, :update, :destroy]
  resources :contacts, only: [:new, :create]

  devise_for :users
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
