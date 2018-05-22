Rails.application.routes.draw do
  resources :books
  resources :indices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      devise_for :admins, controllers: {
        sessions: 'admin/sessions',
	      registration: 'admin/registration'
      }

  root "indices#index"
end
