# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'drinks#index'
  get 'about' => 'about#index'

  get 'find_drink', to: 'drinks#find_drink'
  post 'match_drinks', to: 'drinks#match_drinks', as: 'match_drinks'

  resources :drinks
  resources :categories
  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
