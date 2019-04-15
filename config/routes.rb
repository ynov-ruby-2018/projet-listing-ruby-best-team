Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    root to: 'default#index'

    resources :listings,
  end

end
