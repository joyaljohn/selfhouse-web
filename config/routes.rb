# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  authenticated :user do
    root 'static#home', as: :authenticated_root
  end

  root to: 'static#landing'
end
