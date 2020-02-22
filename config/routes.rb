Rails.application.routes.draw do
  resources :prefectures
  
  root to: 'top#index'
  resources :items, only: [:new]

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :orders, only: [:new]
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  get 'mypage', to: 'mypage#index'
end
