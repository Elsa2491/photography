Rails.application.routes.draw do
  resources :countries, except: :index do
    resources :regions, only: [:new, :create] do
      resources :photos
    end
  end
  resources :regions, only: [:edit, :update, :destroy]

  devise_for :users
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
