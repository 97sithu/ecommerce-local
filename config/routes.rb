Rails.application.routes.draw do
  get 'selerdash/index'
  devise_for :sellers
  get 'admin/index'
  get 'dashboard/index'
  root 'home#index'
  
  devise_for :admins
  resources :customers
  resources :carts
  resources :orders
  resources :goods
  resources :sellers
  resources :categories
  #devise_scope :admin do
   #root :to => 'admins/sessions#new'
  #end
  #get '/admins' => 'dashboard#index', as: :admin_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
