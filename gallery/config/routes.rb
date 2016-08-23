Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :galleries
  resources :pictures, only: [:destroy]
  devise_for :users, controllers: {registrations: "users/registrations"}
  root 'home#index'

  mount ActionCable.server => '/cable'
  get 'whatsnew', to: 'home#whatsnew'
end
