Rails.application.routes.draw do
  get 'albums/show'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :users
resources :albums

get "/sessions/new", to: "sessions#new", as: "new_session"
post "/sessions", to: "sessions#create", as: "sessions"
end
