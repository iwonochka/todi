Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#start'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:index, :show] do
    resources :chats, only: [:create]
  end
  resources :events, only: [:index, :show, :new, :create, :update]
  resources :chats, only: [:show, :index] do
    resources :messages, only: [:create]
  end
  #get "profiles/:id", to: "profiles#show"
  get "/home", to: "pages#home"
end
