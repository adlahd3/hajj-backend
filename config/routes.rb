Rails.application.routes.draw do
  post 'payments/deduct'

  resources :transactions
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
