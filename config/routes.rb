Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#start'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create, :update]
  resources :events, only: [:show, :new, :create, :index, :update]
  get "profiles/:id", to: "profiles#show"
  get "/home", to: "pages#home"
end
