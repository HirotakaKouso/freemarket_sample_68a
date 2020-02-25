Rails.application.routes.draw do

  resources :prefectures

  root to: 'top#index'

  resources :items, only: [:new, :create, :show]


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

  resources :mypage, only: [:index]

  resources :card, only: [:new, :show] do
    collection do
      post 'create', to: 'card#create'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
end
