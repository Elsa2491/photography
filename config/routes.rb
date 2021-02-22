Rails.application.routes.draw do
  resources :countries do
    resources :regions, only: [:new, :create]
  end
  devise_for :users
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
