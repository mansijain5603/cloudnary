Rails.application.routes.draw do
  #root  'students#index'
  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }
  #devise_for :users
  get 'homes/index'
  root 'students#index'
  resources :students
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
