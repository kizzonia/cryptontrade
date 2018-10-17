Rails.application.routes.draw do
  resources :contacts
  resources :faqs
  resources :withdraws
  resources :trades
  resources :deposits
  resources :accounts
  resources :pages, only: [:show]
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :home, only: [:new, :create]

  ActiveAdmin.routes(self)

  authenticated :user do
    root 'accounts#index', as: "authenticated_root"
  end
root 'home#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
