# frozen_string_literal: true

Rails.application.routes.draw do
  resources :blueprints do
    resources :rooms
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#index'
end
