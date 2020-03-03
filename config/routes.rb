Rails.application.routes.draw do

  resources :prefectures

  root to: 'top#index'
  # get '/items/:id/edit', to: 'items#edit', as: 'item'

  resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do

    resources :orders, only: [:index, :new, :create]
    resources :purchase, only: [:index] do

      collection do
        post 'pay', to: 'purchase#pay'
        get 'done', to: 'purchase#done'
      end
    end    

    
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end


  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :users, only: [:show, :edit]

  resources :card, only: [:new, :show, :destroy] do
    collection do
      post 'show', to: 'card#show'
      post 'create', to: 'card#create'
      post 'pay', to: 'card#pay'
    end
  end

  
end
