Rails.application.routes.draw do
  devise_for :users 

  resources :inventories, except: :index do
    resources :orders, only: [:show, :create]
  end
  
  resources :orders, only: [:destroy]

  resources :sellers, only: [:show, :index, :edit, :update]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
