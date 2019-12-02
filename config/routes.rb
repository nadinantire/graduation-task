Rails.application.routes.draw do
  resources :visits
  resources :tickets
  resources :transactions
  resources :artifacts
  resources :exhibitions
  resources :categories
  devise_for :users
  resources :exhibitions do
    resources :tickets
  end
  root "categories#index"
  #root to: 'users/sign_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
