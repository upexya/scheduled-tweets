# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "main#index"

  get "about", to: "about#index"

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  get "auth/twitter/callback", to: "omniauth_callback#twitter"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update", as: :update_password

  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit", as: :edit_password_reset
  patch "password/reset/edit", to: "password_reset#update", as: :update_password_reset

  # resources will automatically generate the index, shell, RESTful routes for the controller.
  # eg for index: get "twitter_accounts/:id" to: "twitter_accounts#index"
  # eg for crud: delete "/twitter_accounts/:id" to: "twitter_accounts#destroy"
  resources :twitter_accounts

  resources :tweets
end
