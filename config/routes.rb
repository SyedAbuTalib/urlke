# frozen_string_literal: true

Rails.application.routes.draw do
  resources :links

  root 'links#new'
  get ':short',       to: redirect(path: 'links/1')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
