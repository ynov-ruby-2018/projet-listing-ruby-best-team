Rails.application.routes.draw do

  localized do
    devise_for :users

    root to: 'default#index'

    root to: 'products#index'
    #resources :currencies, only: :show
    resources :products #défini les routes pour products (get/set)

    namespace :account do
      root to: 'dashboard#index'
      resources :products
    end
    
    resources :account do
      get 'user', on: :collection
    end
  end


end
