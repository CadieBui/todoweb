# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tododbs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tododbs#index"
end
