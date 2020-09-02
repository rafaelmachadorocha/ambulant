Rails.application.routes.draw do
  devise_for :users

  resources :inventories, except: :index do
    resources :orders, only: [:create]
  end

  resources :orders, only: [:destroy, :show, :index] do
      resources :reviews, only: [:create, :new]
  end

  resources :reviews, only: [:show]

  resources :buyers, only: [:show, :index, :edit, :update]

  resources :sellers, only: [:show, :index, :edit, :update]

  resources :buyer_orders, only: :index

  resources :seller_orders, only: :index

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
