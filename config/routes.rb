Rails.application.routes.draw do
  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  get 'groups/create'
  get 'groups/destroy'
  get 'index/show'
  get 'index/new'
  get 'index/create'
  get 'index/destroy'
  get 'spendings/new'
  get 'spendings/create'
  get 'spendings/destroy'
  get 'users/home'
  devise_for :users
  # get 'home/index'
  root 'home#index'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
