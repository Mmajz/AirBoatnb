Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/boats', to: 'boats#home', as: 'boats'
  get '/boats/new', to: 'boats#new', as: 'new_boat'
  post '/boats', to: 'boats#create'
  get '/boats/:id', to: 'boats#show', as: 'boat'
  get '/boats/:id/edit', to: 'boats#edit', as: 'edit_boat'
  patch '/boats/:id', to: 'boats#update'
  delete '/boats/:id', to: 'boats#destroy'
  # Defines the root path route ("/")
  # root "posts#index"
end
