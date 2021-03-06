Rails.application.routes.draw do
  get 'users/:username', to: 'users#show', as: 'user'

  resources :items
  resources :posts
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signup", to: 'devise/registrations#new'
  	get "signin", to: 'devise/sessions#new'
  	delete "signout", to: 'devise/sessions#destroy'
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact_us', to: 'pages#contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
