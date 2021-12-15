Rails.application.routes.draw do



  root to: "users#index"
  resources :companies
  resources :customers
  resources :suppliers
  resources :products
  devise_for :users
  get 'users/new', to: 'users#new'
  post 'users/new', to: 'users#create'
  delete 'users/delete', to: 'users#destroy'
  get 'edit_users/edit', to: 'users#edit'
  patch 'edit_users/edit', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end