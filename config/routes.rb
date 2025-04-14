# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: "main#index"

  get "about", to: "about#index"

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
end
