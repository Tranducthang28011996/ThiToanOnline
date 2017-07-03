Rails.application.routes.draw do
  get 'hocmachoi' => 'hocmachoi#index'
  get 'kiemtra' => 'kiemtra#index'
  # devise_for :users
  root 'home#index'
  get 'home' => 'home#index'
  get 'thidau' => 'thidau#index'
  resources :rooms
  get 'bangxephang' => 'bangxephang#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
