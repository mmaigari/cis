Rails.application.routes.draw do
  devise_for :agents, :controllers => { registrations:
          'agents/registrations'
        }

  get 'home/dashboard'
  get 'home/index'
  get 'home/play'
  resources :roles
  resources :ccategories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
