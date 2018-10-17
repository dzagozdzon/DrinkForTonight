# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'ingredients/new'
  get 'ingredients/create'
  get 'ingredients/update'
  get 'ingredients/edit'
  get 'ingredients/destroy'
  get 'ingredients/index'
  get 'ingredients/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/update'
  get 'categories/edit'
  get 'categories/destroy'
  get 'categories/index'
  get 'categories/show'
  get 'drinks/new'
  get 'drinks/create'
  get 'drinks/update'
  get 'drinks/edit'
  get 'drinks/destroy'
  get 'drinks/index'
  get 'drinks/show'
  get 'about/index'
  get 'about' => 'about#index'

  root 'drinks#index'

  resources :drinks
  resources :categories
  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
