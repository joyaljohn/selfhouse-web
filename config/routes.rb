Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # if user is logged in
  # change the root to home
  #root to: 'static#home'
  root to: 'static#landing'
end
