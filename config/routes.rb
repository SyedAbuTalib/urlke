# frozen_string_literal: true

Rails.application.routes.draw do
  resources :links

  root 'links#new'
  get ':short',       to: redirect { |params, request|
    path = Link.find_by(short_link: params[:short])
    if path.nil?
      'links/new'
    else
      "http://#{request.host_with_port}/links/#{path.id}"
    end
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
