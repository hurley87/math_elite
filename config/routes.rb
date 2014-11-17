Rails.application.routes.draw do

  get 'submit/new'

  get 'submit/create'

  root 'pages#home'

  resources :user_sessions
  resources :users
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :charges
  resources :purchases, only: [:show]

  resources :updates
  resources :submits
  
  resources :levels

end
