Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :boats, only: [:new, :create, :edit, :update, :index, :show] do
     resources :bookings, only: [:new, :create, :index]
  end
  get 'dashboard', to: 'dashboard#index'
  # Defines the root path route ("/")
  # root "posts#index"
end
