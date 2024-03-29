Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#start'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:index, :show] do
    resources :chats, only: [:create]
  end
  resources :events, only: [:index, :show, :new, :create, :update] do
    resources :participants, only: [:new, :create, :destroy]
  end
  resources :chats, only: [:show, :index] do
    resources :messages, only: [:create]
  end
  #get "profiles/:id", to: "profiles#show"
  resources :participants, only: [:show, :index]
  get "/home", to: "pages#home"
  get "/dashboard", to: "profiles#dashboard"
end
