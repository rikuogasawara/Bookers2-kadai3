Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  #resources :books, only: [:create, :index, :show, :edit,:update, :destroy]
  #resources :users, only: [:index, :show, :edit, :update]

 # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  resources :users , only: [:index, :show, :edit, :update]

  # get 'books/index'
  # get 'books/create'
  # get 'books/show'
  # get 'books/edit'
  # get 'books/update'
  # get 'books/destroy'
  resources :books , only: [:index, :create, :show, :edit, :update, :destroy]

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end