Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    root to: 'default#index'
    resources :listings

    resources :account do
      get 'user', on: :collection
    end
  end

  namespace :api, format: 'json' do
      namespace :v1 do
          post "auth", to: "auth#create"
          get "locales", to: "locales#index", as: "locales"
      end
  end
end
