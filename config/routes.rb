# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items do
    member do
      patch :move
    end
  end
  resources :lists
  devise_for :users
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
