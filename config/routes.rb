# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rooms, only: %i[create update destroy]
  resources :blueprints do
    resources :rooms, only: %i[new show destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#index'
end
