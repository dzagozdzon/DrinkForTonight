# frozen_string_literal: true

Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
