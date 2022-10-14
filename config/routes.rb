Rails.application.routes.draw do
  resources :boards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'boards#index'

  namespace :api do
    resources :boards do
      resources :lists, controller: "lists"
    end
  end
end
