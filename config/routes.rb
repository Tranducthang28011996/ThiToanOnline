Rails.application.routes.draw do
  get 'hocmachoi' => 'hocmachoi#index'
  get 'kiemtra' => 'kiemtra#index'
  # devise_for :users
  root 'home#index'
  get 'home' => 'home#index'
  get 'thidau' => 'thidau#index'
  resources :rooms
  get 'bangxephang' => 'bangxephang#index'
  get 'phongcho' => 'rooms#phongcho'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",
                                       :sessions => "users/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
