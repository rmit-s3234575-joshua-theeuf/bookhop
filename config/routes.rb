Rails.application.routes.draw do
  resources :indices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      devise_for :admins, controllers: {
        sessions: 'users/sessions',
	registration: 'users/registration'
      }

  root "indices#index"
end
