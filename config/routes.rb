Rails.application.routes.draw do
  resources :items
  resources :posts
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signup" => 'devise/registrations#new'
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact_us' => 'pages#contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
