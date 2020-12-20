# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sourcev2s
  resources :events
  resources :sources

  root to: "events#index"
end
