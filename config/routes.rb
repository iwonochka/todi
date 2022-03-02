Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#start'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:index, :show]
  resources :events, only: [:index, :show, :new, :create, :update]
  get "profiles/:id", to: "profiles#show"
  get "/home", to: "pages#home"
end
