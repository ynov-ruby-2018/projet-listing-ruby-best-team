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

  #API REST 
  namespace :api, format: 'json' do
    namespace :v1 do
        post "auth", to: "auth#create"
        get "locales", to: "locales#index", as: "locales"
        

        get "product", to: "api#productAll"
        get 'product/:id', to: "api#productSingle"
        
    end
  end

end
